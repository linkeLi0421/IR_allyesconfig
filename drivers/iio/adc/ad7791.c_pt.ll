; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7791.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7791.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad7791_chip_info = type { ptr, i32, i32 }
%struct.ad_sigma_delta_info = type { ptr, ptr, ptr, i8, i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad7791_state = type { %struct.ad_sigma_delta, i8, i8, ptr, ptr, [116 x i8] }
%struct.ad_sigma_delta = type { ptr, ptr, %struct.completion, i8, i8, i8, i8, ptr, [56 x i8], [4 x i8], [4 x i8], [16 x i8], [104 x i8] }
%struct.ad7791_platform_data = type { i8, i8, i8 }

@__initcall__kmod_ad7791__290_472_ad7791_driver_init6 = internal global ptr @ad7791_driver_init, section ".initcall6.init", align 4
@ad7791_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7791_spi_ids, ptr @ad7791_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7791_driver_exit = internal global ptr @ad7791_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"ad7791.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [80 x i8] c"ad7791.description=Analog Devices AD7787/AD7788/AD7789/AD7790/AD7791 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad7791.file=drivers/iio/adc/ad7791\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad7791.license=GPL v2\00", section ".modinfo", align 1
@ad7791_spi_ids = internal constant { [6 x %struct.spi_device_id], [40 x i8] } { [6 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7787\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad7788\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad7789\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7791\00", [25 x i8] zeroinitializer }, align 32
@ad7791_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Missing IRQ.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7791_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad7791.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7791_probe._entry_ptr = internal global ptr @ad7791_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"refin\00", [26 x i8] zeroinitializer }, align 32
@ad7791_chip_infos = internal constant { [5 x %struct.ad7791_chip_info], [36 x i8] } { [5 x %struct.ad7791_chip_info] [%struct.ad7791_chip_info { ptr @ad7787_channels, i32 5, i32 15 }, %struct.ad7791_chip_info { ptr @ad7790_channels, i32 4, i32 4 }, %struct.ad7791_chip_info { ptr @ad7791_channels, i32 4, i32 4 }, %struct.ad7791_chip_info { ptr @ad7790_channels, i32 4, i32 11 }, %struct.ad7791_chip_info { ptr @ad7791_channels, i32 4, i32 15 }], [36 x i8] zeroinitializer }, align 32
@ad7791_sigma_delta_info = internal constant { %struct.ad_sigma_delta_info, [32 x i8] } { %struct.ad_sigma_delta_info { ptr @ad7791_set_channel, ptr @ad7791_set_mode, ptr null, i8 1, i32 4, i32 8, i32 0, i32 8 }, [32 x i8] zeroinitializer }, align 32
@ad7791_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7791_attribute_group, ptr @ad7791_read_raw, ptr null, ptr null, ptr @ad7791_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad_sd_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7791_no_filter_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7791_read_raw, ptr null, ptr null, ptr @ad7791_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad_sd_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7787_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 -1, i32 1, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.7, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 -1, i32 3, i32 3, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.8, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ad7790_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 1, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.7, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 -1, i32 3, i32 2, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.8, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@ad7791_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 2, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.7, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 -1, i32 3, i32 2, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.8, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shorted\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"supply\00", [25 x i8] zeroinitializer }, align 32
@ad7791_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7791_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7791_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.9, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"120 100 33.3 20 16.7 16.6 13.3 9.5\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@ad7791_sample_freq_avail = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 120, i32 0], [2 x i32] [i32 100, i32 0], [2 x i32] [i32 33, i32 300000], [2 x i32] [i32 20, i32 0], [2 x i32] [i32 16, i32 600000], [2 x i32] [i32 16, i32 700000], [2 x i32] [i32 13, i32 300000], [2 x i32] [i32 9, i32 500000]], [32 x i8] zeroinitializer }, align 32
@switch.table.ad7791_set_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 3, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.11 = internal global [9 x i64] [i64 7, i64 32, i64 9, i64 13, i64 16, i64 20, i64 33, i64 100, i64 120]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 600000, i64 700000]
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"ad7791_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 465, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"ad7791_spi_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 455, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 467, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 410, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 420, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"ad7791_chip_infos\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 163, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"ad7791_sigma_delta_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 250, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"ad7791_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 360, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"ad7791_no_filter_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 367, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"ad7787_channels\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"ad7790_channels\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 139, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"ad7791_channels\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 140, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 138, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"ad7791_attribute_group\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 356, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"ad7791_attributes\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 351, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 349, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [25 x i8] c"ad7791_sample_freq_avail\00", align 1
@___asan_gen_.86 = private constant [28 x i8] c"../drivers/iio/adc/ad7791.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 203, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant [29 x i8] c"switch.table.ad7791_set_mode\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad7791_driver_exit, ptr @__initcall__kmod_ad7791__290_472_ad7791_driver_init6, ptr @ad7791_driver_exit, ptr @ad7791_probe._entry, ptr @ad7791_probe._entry_ptr, ptr @ad7791_driver, ptr @ad7791_spi_ids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad7791_chip_infos, ptr @ad7791_sigma_delta_info, ptr @ad7791_info, ptr @ad7791_no_filter_info, ptr @ad7787_channels, ptr @ad7790_channels, ptr @ad7791_channels, ptr @.str.7, ptr @.str.8, ptr @ad7791_attribute_group, ptr @ad7791_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.9, ptr @.str.10, ptr @ad7791_sample_freq_avail, ptr @switch.table.ad7791_set_mode], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_spi_ids to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_chip_infos to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_sigma_delta_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_no_filter_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7787_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7790_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7791_sample_freq_avail to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad7791_set_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7791_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7791_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7791_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7791_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7791_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %call8 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.6) #4
  %reg = getelementptr inbounds %struct.ad7791_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call16 = tail call i32 @regulator_enable(ptr noundef %call8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7791_reg_disable, ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %9) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %call26 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call26, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [5 x %struct.ad7791_chip_info], ptr @ad7791_chip_infos, i32 0, i32 %11
  %info = getelementptr inbounds %struct.ad7791_state, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %info, align 8
  %call27 = tail call i32 @ad_sd_init(ptr noundef %5, ptr noundef nonnull %call, ptr noundef %spi, ptr noundef nonnull @ad7791_sigma_delta_info) #4
  %call28 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %name29 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %name29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call28, ptr %name29, align 8
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call, align 8
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %channels31 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %19 = ptrtoint ptr %channels31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %channels31, align 8
  %20 = load ptr, ptr %info, align 8
  %num_channels = getelementptr inbounds %struct.ad7791_chip_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_channels, align 4
  %num_channels33 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %23 = ptrtoint ptr %num_channels33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %num_channels33, align 4
  %24 = load ptr, ptr %info, align 8
  %flags = getelementptr inbounds %struct.ad7791_chip_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool35.not, ptr @ad7791_no_filter_info, ptr @ad7791_info
  %27 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spec.select, ptr %27, align 8
  %call41 = tail call i32 @devm_ad_sd_setup_buffer_and_trigger(ptr noundef %spi, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %if.end25
  %call45 = tail call fastcc i32 @ad7791_setup(ptr noundef %5, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end44.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end14.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %if.then11 ], [ %call50, %if.end48 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call41, %if.end25.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7791_reg_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_ad_sd_setup_buffer_and_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7791_setup(ptr noundef %st, ptr noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.ad7791_state, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %mode, align 128
  %filter = getelementptr inbounds %struct.ad7791_state, ptr %st, i32 0, i32 2
  %1 = ptrtoint ptr %filter to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %filter, align 1
  %tobool.not = icmp eq ptr %pdata, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.ad7791_state, ptr %st, i32 0, i32 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %flags = getelementptr inbounds %struct.ad7791_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pdata, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mode, align 128
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and10 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end7.if.end19_crit_edge, label %land.lhs.true12

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

land.lhs.true12:                                  ; preds = %if.end7
  %burnout_current = getelementptr inbounds %struct.ad7791_platform_data, ptr %pdata, i32 0, i32 1
  %11 = ptrtoint ptr %burnout_current to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %burnout_current, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end19_crit_edge, label %if.then15

land.lhs.true12.if.end19_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 128
  %15 = or i8 %14, 8
  store i8 %15, ptr %mode, align 128
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true12.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and22 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end19.if.end32_crit_edge, label %land.lhs.true24

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true24:                                  ; preds = %if.end19
  %unipolar = getelementptr inbounds %struct.ad7791_platform_data, ptr %pdata, i32 0, i32 2
  %18 = ptrtoint ptr %unipolar to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %unipolar, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool25.not = icmp eq i8 %19, 0
  br i1 %tobool25.not, label %land.lhs.true24.if.end32_crit_edge, label %if.then27

land.lhs.true24.if.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mode, align 128
  %22 = or i8 %21, 4
  store i8 %22, ptr %mode, align 128
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %land.lhs.true24.if.end32_crit_edge, %if.end19.if.end32_crit_edge
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mode, align 128
  %conv34 = zext i8 %24 to i32
  %call = tail call i32 @ad_sd_write_reg(ptr noundef %st, i32 noundef 1, i32 noundef 1, i32 noundef %conv34) #4
  br label %return

return:                                           ; preds = %if.end32, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end32 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7791_set_channel(ptr noundef %sd, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %channel to i8
  tail call void @ad_sd_set_comm(ptr noundef %sd, i8 noundef zeroext %conv) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7791_set_mode(ptr noundef %sd, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %0 = icmp ult i32 %mode, 4
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ad7791_set_mode, i32 0, i32 %mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mode.addr.0 = phi i32 [ %mode, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %mode3 = getelementptr inbounds %struct.ad7791_state, ptr %sd, i32 0, i32 1
  %2 = ptrtoint ptr %mode3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode3, align 128
  %4 = and i8 %3, 63
  %mode.addr.0.tr = trunc i32 %mode.addr.0 to i8
  %5 = shl i8 %mode.addr.0.tr, 6
  %conv7 = or i8 %5, %4
  store i8 %conv7, ptr %mode3, align 128
  %conv9 = zext i8 %conv7 to i32
  %call10 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 1, i32 noundef 1, i32 noundef %conv9) #4
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ad_sd_set_comm(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7791_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mode = getelementptr inbounds %struct.ad7791_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 128
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %5 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup34_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb7
    i32 12, label %sw.bb28
  ]

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup34

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @ad_sigma_delta_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val) #4
  br label %cleanup34

sw.bb3:                                           ; preds = %entry
  br i1 %tobool.not, label %if.else, label %sw.bb3.if.end_crit_edge

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %realbits, align 1
  %conv5 = zext i8 %7 to i32
  %sub = add nsw i32 %conv5, -1
  %shl.neg = shl nsw i32 -1, %sub
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.bb3.if.end_crit_edge
  %storemerge55 = phi i32 [ %shl.neg, %if.else ], [ 0, %sw.bb3.if.end_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge55, ptr %val, align 4
  br label %cleanup34

sw.bb7:                                           ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp eq i32 %10, 3
  br i1 %cmp, label %sw.bb7.if.end16_crit_edge, label %if.else10

sw.bb7.if.end16_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.else10:                                        ; preds = %sw.bb7
  %reg = getelementptr inbounds %struct.ad7791_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %call11 = tail call i32 @regulator_get_voltage(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.else10.cleanup34_crit_edge, label %if.end15

if.else10.cleanup34_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup34

if.end15:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  %div56 = udiv i32 %call11, 1000
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %sw.bb7.if.end16_crit_edge
  %storemerge57 = phi i32 [ %div56, %if.end15 ], [ 5850, %sw.bb7.if.end16_crit_edge ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge57, ptr %val, align 4
  %realbits24 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %realbits24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %realbits24, align 1
  %conv25 = zext i8 %15 to i32
  %sub26 = sext i1 %tobool.not to i32
  %storemerge = add nsw i32 %conv25, %sub26
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %val2, align 4
  br label %cleanup34

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %filter = getelementptr inbounds %struct.ad7791_state, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %filter, align 1
  %19 = and i8 %18, 7
  %and30 = zext i8 %19 to i32
  %arrayidx = getelementptr [8 x [2 x i32]], ptr @ad7791_sample_freq_avail, i32 0, i32 %and30
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  %arrayidx33 = getelementptr [8 x [2 x i32]], ptr @ad7791_sample_freq_avail, i32 0, i32 %and30, i32 1
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx33, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val2, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %sw.bb28, %if.end16, %if.else10.cleanup34_crit_edge, %if.end, %sw.bb, %entry.cleanup34_crit_edge
  %retval.1 = phi i32 [ 2, %sw.bb28 ], [ 11, %if.end16 ], [ 1, %if.end ], [ %call2, %sw.bb ], [ -22, %entry.cleanup34_crit_edge ], [ %call11, %if.else10.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7791_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %for.body.preheader, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body.preheader:                               ; preds = %if.end
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %val, label %for.body.preheader.sw.epilog_crit_edge [
    i32 120, label %land.lhs.true
    i32 100, label %land.lhs.true.1
    i32 33, label %land.lhs.true.2
    i32 20, label %land.lhs.true.3
    i32 16, label %land.lhs.true.4
    i32 13, label %land.lhs.true.6
    i32 9, label %land.lhs.true.7
  ]

for.body.preheader.sw.epilog_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6 = icmp eq i32 %val2, 0
  br i1 %cmp6, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true.1:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.1 = icmp eq i32 %val2, 0
  br i1 %cmp6.1, label %land.lhs.true.1.if.end11_crit_edge, label %land.lhs.true.1.sw.epilog_crit_edge

land.lhs.true.1.sw.epilog_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.1.if.end11_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true.2:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %val2)
  %cmp6.2 = icmp eq i32 %val2, 300000
  br i1 %cmp6.2, label %land.lhs.true.2.if.end11_crit_edge, label %land.lhs.true.2.sw.epilog_crit_edge

land.lhs.true.2.sw.epilog_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.2.if.end11_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true.3:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.3 = icmp eq i32 %val2, 0
  br i1 %cmp6.3, label %land.lhs.true.3.if.end11_crit_edge, label %land.lhs.true.3.sw.epilog_crit_edge

land.lhs.true.3.sw.epilog_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.3.if.end11_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true.4:                                  ; preds = %for.body.preheader
  %3 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %val2, label %land.lhs.true.4.sw.epilog_crit_edge [
    i32 600000, label %land.lhs.true.4.if.end11_crit_edge
    i32 700000, label %if.end11.fold.split
  ]

land.lhs.true.4.if.end11_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true.4.sw.epilog_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.6:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %val2)
  %cmp6.6 = icmp eq i32 %val2, 300000
  br i1 %cmp6.6, label %land.lhs.true.6.if.end11_crit_edge, label %land.lhs.true.6.sw.epilog_crit_edge

land.lhs.true.6.sw.epilog_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.6.if.end11_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true.7:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp6.7 = icmp eq i32 %val2, 500000
  br i1 %cmp6.7, label %land.lhs.true.7.if.end11_crit_edge, label %land.lhs.true.7.sw.epilog_crit_edge

land.lhs.true.7.sw.epilog_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.7.if.end11_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11.fold.split:                              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11:                                         ; preds = %if.end11.fold.split, %land.lhs.true.7.if.end11_crit_edge, %land.lhs.true.6.if.end11_crit_edge, %land.lhs.true.4.if.end11_crit_edge, %land.lhs.true.3.if.end11_crit_edge, %land.lhs.true.2.if.end11_crit_edge, %land.lhs.true.1.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge
  %i.036.lcssa = phi i8 [ 0, %land.lhs.true.if.end11_crit_edge ], [ 1, %land.lhs.true.1.if.end11_crit_edge ], [ 2, %land.lhs.true.2.if.end11_crit_edge ], [ 3, %land.lhs.true.3.if.end11_crit_edge ], [ 4, %land.lhs.true.4.if.end11_crit_edge ], [ 6, %land.lhs.true.6.if.end11_crit_edge ], [ 7, %land.lhs.true.7.if.end11_crit_edge ], [ 5, %if.end11.fold.split ]
  %filter = getelementptr inbounds %struct.ad7791_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %filter, align 1
  %6 = and i8 %5, -8
  %conv15 = or i8 %6, %i.036.lcssa
  store i8 %conv15, ptr %filter, align 1
  %conv17 = zext i8 %conv15 to i32
  %call18 = tail call i32 @ad_sd_write_reg(ptr noundef %1, i32 noundef 2, i32 noundef 1, i32 noundef %conv17) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end11, %land.lhs.true.7.sw.epilog_crit_edge, %land.lhs.true.6.sw.epilog_crit_edge, %land.lhs.true.4.sw.epilog_crit_edge, %land.lhs.true.3.sw.epilog_crit_edge, %land.lhs.true.2.sw.epilog_crit_edge, %land.lhs.true.1.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %for.body.preheader.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end11 ], [ -22, %if.end.sw.epilog_crit_edge ], [ -22, %land.lhs.true.7.sw.epilog_crit_edge ], [ -22, %land.lhs.true.6.sw.epilog_crit_edge ], [ -22, %land.lhs.true.3.sw.epilog_crit_edge ], [ -22, %land.lhs.true.2.sw.epilog_crit_edge ], [ -22, %land.lhs.true.1.sw.epilog_crit_edge ], [ -22, %land.lhs.true.sw.epilog_crit_edge ], [ -22, %land.lhs.true.4.sw.epilog_crit_edge ], [ -22, %for.body.preheader.sw.epilog_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_validate_trigger(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sigma_delta_single_conversion(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_ad7791__290_472_ad7791_driver_init6, !1, !"__initcall__kmod_ad7791__290_472_ad7791_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7791.c", i32 472, i32 1}
!2 = !{ptr @__exitcall_ad7791_driver_exit, !1, !"__exitcall_ad7791_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7791.c", i32 474, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7791.c", i32 475, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7791.c", i32 476, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7791.c", i32 467, i32 11}
!12 = !{ptr @ad7791_driver, !13, !"ad7791_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7791.c", i32 465, i32 26}
!14 = !{ptr @ad7791_spi_ids, !15, !"ad7791_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7791.c", i32 455, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7791.c", i32 410, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad7791_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad7791_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7791.c", i32 420, i32 42}
!26 = !{ptr @ad7791_chip_infos, !27, !"ad7791_chip_infos", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7791.c", i32 163, i32 38}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7791.c", i32 138, i32 8}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ad7787_channels, !29, !"ad7787_channels", i1 false, i1 false}
!32 = !{ptr @ad7790_channels, !33, !"ad7790_channels", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ad7791.c", i32 139, i32 8}
!34 = !{ptr @ad7791_channels, !35, !"ad7791_channels", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ad7791.c", i32 140, i32 8}
!36 = !{ptr @ad7791_sigma_delta_info, !37, !"ad7791_sigma_delta_info", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ad7791.c", i32 250, i32 41}
!38 = !{ptr @ad7791_info, !39, !"ad7791_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ad7791.c", i32 360, i32 30}
!40 = !{ptr @ad7791_attribute_group, !41, !"ad7791_attribute_group", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ad7791.c", i32 356, i32 37}
!42 = !{ptr @ad7791_attributes, !43, !"ad7791_attributes", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ad7791.c", i32 351, i32 26}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/ad7791.c", i32 349, i32 8}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iio_const_attr_sampling_frequency_available, !45, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!48 = !{ptr @ad7791_sample_freq_avail, !49, !"ad7791_sample_freq_avail", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ad7791.c", i32 203, i32 18}
!50 = !{ptr @ad7791_no_filter_info, !51, !"ad7791_no_filter_info", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/ad7791.c", i32 367, i32 30}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
