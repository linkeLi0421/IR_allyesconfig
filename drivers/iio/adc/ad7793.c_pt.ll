; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7793.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7793.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad_sigma_delta_info = type { ptr, ptr, ptr, i8, i32, i32, i32, i32 }
%struct.ad7793_chip_info = type { i32, ptr, i32, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ad_sd_calib_data = type { i32, i32 }
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
%struct.ad7793_state = type { ptr, ptr, i16, i16, i16, [8 x [2 x i32]], [48 x i8], %struct.ad_sigma_delta }
%struct.ad_sigma_delta = type { ptr, ptr, %struct.completion, i8, i8, i8, i8, ptr, [56 x i8], [4 x i8], [4 x i8], [16 x i8], [104 x i8] }
%struct.ad7793_platform_data = type { i32, i8, i8, i8, i8, i32, i32, i32, i32 }

@__initcall__kmod_ad7793__290_865_ad7793_driver_init6 = internal global ptr @ad7793_driver_init, section ".initcall6.init", align 4
@ad7793_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7793_id, ptr @ad7793_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7793_driver_exit = internal global ptr @ad7793_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad7793.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [58 x i8] c"ad7793.description=Analog Devices AD7793 and similar ADCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad7793.file=drivers/iio/adc/ad7793\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad7793.license=GPL v2\00", section ".modinfo", align 1
@ad7793_id = internal constant { [10 x %struct.spi_device_id], [88 x i8] } { [10 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7785\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ad7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"ad7797\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"ad7798\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"ad7799\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7793\00", [25 x i8] zeroinitializer }, align 32
@ad7793_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 785, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7793_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad7793.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7793_probe._entry_ptr = internal global ptr @ad7793_probe._entry, section ".printk_index", align 4
@ad7793_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no IRQ?\0A\00", [23 x i8] zeroinitializer }, align 32
@ad7793_probe._entry_ptr.8 = internal global ptr @ad7793_probe._entry.6, section ".printk_index", align 4
@ad7793_sigma_delta_info = internal constant { %struct.ad_sigma_delta_info, [32 x i8] } { %struct.ad_sigma_delta_info { ptr @ad7793_set_channel, ptr @ad7793_set_mode, ptr null, i8 1, i32 3, i32 64, i32 0, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"refin\00", [26 x i8] zeroinitializer }, align 32
@ad7793_chip_info_tbl = internal constant { [9 x %struct.ad7793_chip_info], [40 x i8] } { [9 x %struct.ad7793_chip_info] [%struct.ad7793_chip_info { i32 3, ptr @ad7785_channels, i32 7, i32 63, ptr @ad7793_info, ptr @ad7793_sample_freq_avail }, %struct.ad7793_chip_info { i32 10, ptr @ad7792_channels, i32 7, i32 63, ptr @ad7793_info, ptr @ad7793_sample_freq_avail }, %struct.ad7793_chip_info { i32 11, ptr @ad7793_channels, i32 7, i32 63, ptr @ad7793_info, ptr @ad7793_sample_freq_avail }, %struct.ad7793_chip_info { i32 15, ptr @ad7794_channels, i32 10, i32 63, ptr @ad7793_info, ptr @ad7793_sample_freq_avail }, %struct.ad7793_chip_info { i32 15, ptr @ad7795_channels, i32 10, i32 63, ptr @ad7793_info, ptr @ad7793_sample_freq_avail }, %struct.ad7793_chip_info { i32 10, ptr @ad7796_channels, i32 5, i32 1, ptr @ad7797_info, ptr @ad7797_sample_freq_avail }, %struct.ad7793_chip_info { i32 11, ptr @ad7797_channels, i32 5, i32 1, ptr @ad7797_info, ptr @ad7797_sample_freq_avail }, %struct.ad7793_chip_info { i32 8, ptr @ad7798_channels, i32 6, i32 48, ptr @ad7793_info, ptr @ad7793_sample_freq_avail }, %struct.ad7793_chip_info { i32 9, ptr @ad7799_channels, i32 6, i32 48, ptr @ad7793_info, ptr @ad7793_sample_freq_avail }], [40 x i8] zeroinitializer }, align 32
@ad7785_channels = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 1, i32 1, i32 1, %struct.anon.84 { i8 117, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 2, i32 2, i32 2, %struct.anon.84 { i8 117, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 6, i32 4, %struct.anon.84 { i8 117, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 5, %struct.anon.84 { i8 117, i8 20, i8 32, i8 4, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [152 x i8] zeroinitializer }, align 32
@ad7793_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7793_attribute_group, ptr @ad7793_read_raw, ptr null, ptr @ad7793_read_avail, ptr @ad7793_write_raw, ptr null, ptr @ad7793_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr @ad_sd_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7793_sample_freq_avail = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 470, i16 242, i16 123, i16 62, i16 50, i16 39, i16 33, i16 19, i16 17, i16 16, i16 12, i16 10, i16 8, i16 6, i16 4], [32 x i8] zeroinitializer }, align 32
@ad7792_channels = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 1, i32 1, i32 1, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 2, i32 2, i32 2, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 6, i32 4, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 5, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [152 x i8] zeroinitializer }, align 32
@ad7793_channels = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 1, i32 1, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 2, i32 2, i32 2, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 6, i32 4, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 5, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [152 x i8] zeroinitializer }, align 32
@ad7794_channels = internal constant { [10 x %struct.iio_chan_spec], [208 x i8] } { [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 1, i32 1, i32 1, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 2, i32 2, i32 2, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 3, i32 4, i32 3, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 4, i32 5, i32 4, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 5, i32 6, i32 5, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 8, i32 6, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 6, i32 7, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 8, %struct.anon.84 { i8 117, i8 16, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 9, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [208 x i8] zeroinitializer }, align 32
@ad7795_channels = internal constant { [10 x %struct.iio_chan_spec], [208 x i8] } { [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 1, i32 1, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 2, i32 2, i32 2, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 3, i32 4, i32 3, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 4, i32 5, i32 4, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 5, i32 6, i32 5, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 8, i32 6, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 6, i32 7, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 8, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 9, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [208 x i8] zeroinitializer }, align 32
@ad7796_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 3, i32 1, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 6, i32 2, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 3, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ad7797_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7797_attribute_group, ptr @ad7793_read_raw, ptr null, ptr null, ptr @ad7793_write_raw, ptr null, ptr @ad7793_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr @ad_sd_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7797_sample_freq_avail = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 0, i16 0, i16 123, i16 62, i16 50, i16 0, i16 33, i16 0, i16 17, i16 16, i16 12, i16 10, i16 8, i16 6, i16 4], [32 x i8] zeroinitializer }, align 32
@ad7797_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 3, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 6, i32 2, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 3, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ad7798_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 1, i32 1, i32 1, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 2, i32 2, i32 2, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 4, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 5, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [144 x i8] zeroinitializer }, align 32
@ad7799_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 1, i32 1, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 2, i32 2, i32 2, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.10, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 7, i32 4, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.11, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 5, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [144 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shorted\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"supply\00", [25 x i8] zeroinitializer }, align 32
@ad7793_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7793_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7793_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.12, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"470 242 123 62 50 39 33 19 17 16 12 10 8 6 4\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@ad7793_calib_arr = internal constant { [6 x %struct.ad_sd_calib_data], [48 x i8] } { [6 x %struct.ad_sd_calib_data] [%struct.ad_sd_calib_data { i32 4, i32 0 }, %struct.ad_sd_calib_data { i32 5, i32 0 }, %struct.ad_sd_calib_data { i32 4, i32 1 }, %struct.ad_sd_calib_data { i32 5, i32 1 }, %struct.ad_sd_calib_data { i32 4, i32 2 }, %struct.ad_sd_calib_data { i32 5, i32 2 }], [48 x i8] zeroinitializer }, align 32
@ad7797_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7797_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7797_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available_ad7797, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available_ad7797 = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.14, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"123 62 50 33 17 16 12 10 8 6 4\00", [33 x i8] zeroinitializer }, align 32
@ad7793_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device ID query failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7793_setup\00", [19 x i8] zeroinitializer }, align 32
@ad7793_setup._entry_ptr = internal global ptr @ad7793_setup._entry, section ".printk_index", align 4
@ad7793_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup failed\0A\00", [18 x i8] zeroinitializer }, align 32
@ad7793_setup._entry_ptr.19 = internal global ptr @ad7793_setup._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"ad7793_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 858, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"ad7793_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 844, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 860, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 785, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 790, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"ad7793_sigma_delta_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 203, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 803, i32 43 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"ad7793_chip_info_tbl\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 670, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"ad7785_channels\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"ad7793_info\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 533, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant [25 x i8] c"ad7793_sample_freq_avail\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 346, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"ad7792_channels\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 661, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"ad7793_channels\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 662, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"ad7794_channels\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 663, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"ad7795_channels\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 664, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"ad7796_channels\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 665, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"ad7797_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 542, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant [25 x i8] c"ad7797_sample_freq_avail\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 349, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"ad7797_channels\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 666, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"ad7798_channels\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 667, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"ad7799_channels\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 668, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 660, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"ad7793_attribute_group\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 383, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"ad7793_attributes\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 378, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 352, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"ad7793_calib_arr\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 212, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"ad7797_attribute_group\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 392, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant [18 x i8] c"ad7797_attributes\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 387, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant [51 x i8] c"iio_const_attr_sampling_frequency_available_ad7797\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 355, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 283, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [28 x i8] c"../drivers/iio/adc/ad7793.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 342, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad7793_driver_exit, ptr @__initcall__kmod_ad7793__290_865_ad7793_driver_init6, ptr @ad7793_driver_exit, ptr @ad7793_probe._entry, ptr @ad7793_probe._entry.6, ptr @ad7793_probe._entry_ptr, ptr @ad7793_probe._entry_ptr.8, ptr @ad7793_setup._entry, ptr @ad7793_setup._entry.17, ptr @ad7793_setup._entry_ptr, ptr @ad7793_setup._entry_ptr.19, ptr @ad7793_driver, ptr @ad7793_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ad7793_sigma_delta_info, ptr @.str.9, ptr @ad7793_chip_info_tbl, ptr @ad7785_channels, ptr @ad7793_info, ptr @ad7793_sample_freq_avail, ptr @ad7792_channels, ptr @ad7793_channels, ptr @ad7794_channels, ptr @ad7795_channels, ptr @ad7796_channels, ptr @ad7797_info, ptr @ad7797_sample_freq_avail, ptr @ad7797_channels, ptr @ad7798_channels, ptr @ad7799_channels, ptr @.str.10, ptr @.str.11, ptr @ad7793_attribute_group, ptr @ad7793_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.12, ptr @.str.13, ptr @ad7793_calib_arr, ptr @ad7797_attribute_group, ptr @ad7797_attributes, ptr @iio_const_attr_sampling_frequency_available_ad7797, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_id to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_sigma_delta_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_chip_info_tbl to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7785_channels to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_sample_freq_avail to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7792_channels to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_channels to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7794_channels to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7795_channels to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7796_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7797_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7797_sample_freq_avail to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7797_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7798_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7799_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_calib_arr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7797_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7797_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available_ad7797 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7793_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7793_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7793_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7793_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7793_probe(ptr noundef %spi) #2 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %sd = getelementptr inbounds %struct.ad7793_state, ptr %5, i32 0, i32 7
  %call13 = tail call i32 @ad_sd_init(ptr noundef %sd, ptr noundef nonnull %call, ptr noundef %spi, ptr noundef nonnull @ad7793_sigma_delta_info) #7
  %refsel = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %refsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp14.not = icmp eq i32 %7, 2
  br i1 %cmp14.not, label %if.end11.if.end40_crit_edge, label %if.then15

if.end11.if.end40_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then15:                                        ; preds = %if.end11
  %call17 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.9) #7
  %reg = getelementptr inbounds %struct.ad7793_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.then15
  %call25 = tail call i32 @regulator_enable(ptr noundef %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7793_reg_disable, ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end34, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %11) #7
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %call36 = tail call i32 @regulator_get_voltage(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %div111 = udiv i32 %call36, 1000
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end11.if.end40_crit_edge
  %vref_mv.0 = phi i32 [ %div111, %if.end39 ], [ 1170, %if.end11.if.end40_crit_edge ]
  %call41 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call41, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [9 x %struct.ad7793_chip_info], ptr @ad7793_chip_info_tbl, i32 0, i32 %15
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %5, align 128
  %call42 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %name43 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %name43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call42, ptr %name43, align 8
  %18 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %call, align 8
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 128
  %channels = getelementptr inbounds %struct.ad7793_chip_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channels, align 4
  %channels45 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %23 = ptrtoint ptr %channels45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %channels45, align 8
  %24 = load ptr, ptr %5, align 128
  %num_channels = getelementptr inbounds %struct.ad7793_chip_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_channels, align 4
  %num_channels47 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %27 = ptrtoint ptr %num_channels47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %num_channels47, align 4
  %28 = load ptr, ptr %5, align 128
  %iio_info = getelementptr inbounds %struct.ad7793_chip_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %iio_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iio_info, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %31 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %info, align 8
  %call50 = tail call i32 @devm_ad_sd_setup_buffer_and_trigger(ptr noundef %spi, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.end40
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %id.i, align 4, !annotation !97
  %current_source_direction.i.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %current_source_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %current_source_direction.i.i, align 4
  %37 = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %switch.i.i = icmp eq i32 %37, 2
  br i1 %switch.i.i, label %land.lhs.true.i.i, label %if.end53.if.end.i.i_crit_edge

if.end53.if.end.i.i_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end53
  %exitation_current.i.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %exitation_current.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %exitation_current.i.i, align 4
  %.off47.i.i = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off47.i.i)
  %switch48.i.i = icmp ult i32 %.off47.i.i, 2
  br i1 %switch48.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.ad7793_setup.exit.thread_crit_edge

land.lhs.true.i.i.ad7793_setup.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad7793_setup.exit.thread

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end53.if.end.i.i_crit_edge
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %33, align 128
  %flags.i.i = getelementptr inbounds %struct.ad7793_chip_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true7.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

land.lhs.true7.i.i:                               ; preds = %if.end.i.i
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp8.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp8.not.i.i, label %land.lhs.true7.i.i.if.end10.i.i_crit_edge, label %land.lhs.true7.i.i.ad7793_setup.exit.thread_crit_edge

land.lhs.true7.i.i.ad7793_setup.exit.thread_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad7793_setup.exit.thread

land.lhs.true7.i.i.if.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %land.lhs.true7.i.i.if.end10.i.i_crit_edge, %if.end.i.i.if.end10.i.i_crit_edge
  %and13.i.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true15.i.i, label %if.end10.i.i.if.end18.i.i_crit_edge

if.end10.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i.i

land.lhs.true15.i.i:                              ; preds = %if.end10.i.i
  %46 = ptrtoint ptr %refsel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %refsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp16.not.i.i = icmp eq i32 %47, 0
  br i1 %cmp16.not.i.i, label %land.lhs.true15.i.i.if.end18.i.i_crit_edge, label %land.lhs.true15.i.i.ad7793_setup.exit.thread_crit_edge

land.lhs.true15.i.i.ad7793_setup.exit.thread_crit_edge: ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad7793_setup.exit.thread

land.lhs.true15.i.i.if.end18.i.i_crit_edge:       ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %land.lhs.true15.i.i.if.end18.i.i_crit_edge, %if.end10.i.i.if.end18.i.i_crit_edge
  %and21.i.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %land.lhs.true23.i.i, label %if.end18.i.i.if.end26.i.i_crit_edge

if.end18.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i

land.lhs.true23.i.i:                              ; preds = %if.end18.i.i
  %bias_voltage.i.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %bias_voltage.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bias_voltage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp24.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp24.not.i.i, label %land.lhs.true23.i.i.if.end26.i.i_crit_edge, label %land.lhs.true23.i.i.ad7793_setup.exit.thread_crit_edge

land.lhs.true23.i.i.ad7793_setup.exit.thread_crit_edge: ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad7793_setup.exit.thread

land.lhs.true23.i.i.if.end26.i.i_crit_edge:       ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %land.lhs.true23.i.i.if.end26.i.i_crit_edge, %if.end18.i.i.if.end26.i.i_crit_edge
  %and29.i.i = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %land.lhs.true31.i.i, label %if.end26.i.i.if.end.i_crit_edge

if.end26.i.i.if.end.i_crit_edge:                  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true31.i.i:                              ; preds = %if.end26.i.i
  %exitation_current32.i.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %exitation_current32.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %exitation_current32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp33.not.i.i = icmp eq i32 %51, 0
  br i1 %cmp33.not.i.i, label %land.lhs.true31.i.i.if.end.i_crit_edge, label %land.lhs.true31.i.i.ad7793_setup.exit.thread_crit_edge

land.lhs.true31.i.i.ad7793_setup.exit.thread_crit_edge: ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad7793_setup.exit.thread

land.lhs.true31.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true31.i.i.if.end.i_crit_edge, %if.end26.i.i.if.end.i_crit_edge
  %sd.i = getelementptr inbounds %struct.ad7793_state, ptr %33, i32 0, i32 7
  %call2.i = tail call i32 @ad_sd_reset(ptr noundef %sd.i, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i107 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i107, label %if.end.i.do.end338.i_crit_edge, label %if.end4.i

if.end.i.do.end338.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end338.i

if.end4.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 2000, i32 noundef 2) #7
  %call6.i = call i32 @ad_sd_read_reg(ptr noundef %sd.i, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.do.end338.i_crit_edge

if.end4.i.do.end338.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end338.i

if.end9.i:                                        ; preds = %if.end4.i
  %52 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.i, align 4
  %and.i = and i32 %53, 15
  store i32 %and.i, ptr %id.i, align 4
  %54 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %33, align 128
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %57)
  %cmp11.not.i = icmp eq i32 %and.i, %57
  br i1 %cmp11.not.i, label %if.end14.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sd.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.15) #10
  br label %do.end338.i

if.end14.i:                                       ; preds = %if.end9.i
  %mode.i = getelementptr %struct.ad7793_state, ptr %33, i32 0, i32 3
  %60 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %mode.i, align 2
  %conf.i = getelementptr %struct.ad7793_state, ptr %33, i32 0, i32 4
  %61 = ptrtoint ptr %conf.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %conf.i, align 4
  %flags.i = getelementptr inbounds %struct.ad7793_chip_info, ptr %55, i32 0, i32 3
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %and16.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end22.i_crit_edge, label %if.then18.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %1, align 4
  %.tr479.i = trunc i32 %65 to i16
  %66 = shl i16 %.tr479.i, 6
  %67 = and i16 %66, 192
  %conv21.i = or i16 %67, 1
  %68 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv21.i, ptr %mode.i, align 2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end22.i_crit_edge
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i, align 4
  %and25.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end22.i.if.end33.i_crit_edge, label %if.then27.i

if.end22.i.if.end33.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %refsel to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %refsel, align 4
  %73 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %conf.i, align 4
  %.tr478.i = trunc i32 %72 to i16
  %75 = shl i16 %.tr478.i, 6
  %conv32.i = or i16 %75, %74
  store i16 %conv32.i, ptr %conf.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end33.i_crit_edge
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 4
  %and36.i = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end33.i.if.end45.i_crit_edge, label %if.then38.i

if.end33.i.if.end45.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %bias_voltage.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 6
  %78 = ptrtoint ptr %bias_voltage.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bias_voltage.i, align 4
  %80 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %conf.i, align 4
  %.tr.i = trunc i32 %79 to i16
  %82 = shl i16 %.tr.i, 14
  %conv44.i = or i16 %82, %81
  store i16 %conv44.i, ptr %conf.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then38.i, %if.end33.i.if.end45.i_crit_edge
  %buffered.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %buffered.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %buffered.i, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool46.not.i = icmp eq i8 %84, 0
  br i1 %tobool46.not.i, label %lor.lhs.false.i, label %if.end45.i.if.then52.i_crit_edge

if.end45.i.if.then52.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i

lor.lhs.false.i:                                  ; preds = %if.end45.i
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i, align 4
  %and50.i = and i32 %86, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %lor.lhs.false.i.if.then52.i_crit_edge, label %lor.lhs.false.i.if.end57.i_crit_edge

lor.lhs.false.i.if.end57.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

lor.lhs.false.i.if.then52.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52.i

if.then52.i:                                      ; preds = %lor.lhs.false.i.if.then52.i_crit_edge, %if.end45.i.if.then52.i_crit_edge
  %87 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %conf.i, align 4
  %89 = or i16 %88, 16
  store i16 %89, ptr %conf.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then52.i, %lor.lhs.false.i.if.end57.i_crit_edge
  %boost_enable.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 2
  %90 = ptrtoint ptr %boost_enable.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %boost_enable.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool58.not.i = icmp eq i8 %91, 0
  br i1 %tobool58.not.i, label %if.end57.i.if.end69.i_crit_edge, label %land.lhs.true.i

if.end57.i.if.end69.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

land.lhs.true.i:                                  ; preds = %if.end57.i
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i, align 4
  %and62.i = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %land.lhs.true.i.if.end69.i_crit_edge, label %if.then64.i

land.lhs.true.i.if.end69.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

if.then64.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %conf.i, align 4
  %96 = or i16 %95, 2048
  store i16 %96, ptr %conf.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i, %land.lhs.true.i.if.end69.i_crit_edge, %if.end57.i.if.end69.i_crit_edge
  %burnout_current.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 1
  %97 = ptrtoint ptr %burnout_current.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %burnout_current.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool70.not.i = icmp eq i8 %98, 0
  br i1 %tobool70.not.i, label %if.end69.i.if.end76.i_crit_edge, label %if.then71.i

if.end69.i.if.end76.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.then71.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %conf.i, align 4
  %101 = or i16 %100, 8192
  store i16 %101, ptr %conf.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then71.i, %if.end69.i.if.end76.i_crit_edge
  %unipolar.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 4
  %102 = ptrtoint ptr %unipolar.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %unipolar.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool77.not.i = icmp eq i8 %103, 0
  br i1 %tobool77.not.i, label %if.end76.i.if.end83.i_crit_edge, label %if.then78.i

if.end76.i.if.end83.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then78.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %conf.i, align 4
  %106 = or i16 %105, 4096
  store i16 %106, ptr %conf.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then78.i, %if.end76.i.if.end83.i_crit_edge
  %107 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i, align 4
  %and86.i = and i32 %108, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.then88.i, label %if.end83.i.if.end93.i_crit_edge

if.end83.i.if.end93.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.then88.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %conf.i, align 4
  %111 = or i16 %110, 1792
  store i16 %111, ptr %conf.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then88.i, %if.end83.i.if.end93.i_crit_edge
  %112 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %mode.i, align 2
  %114 = and i16 %113, 8191
  %conv6.i.i = or i16 %114, 16384
  store i16 %conv6.i.i, ptr %mode.i, align 2
  %conv9.i.i = zext i16 %conv6.i.i to i32
  %call10.i.i = call i32 @ad_sd_write_reg(ptr noundef %sd.i, i32 noundef 1, i32 noundef 2, i32 noundef %conv9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool96.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool96.not.i, label %if.end98.i, label %if.end93.i.do.end338.i_crit_edge

if.end93.i.do.end338.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end338.i

if.end98.i:                                       ; preds = %if.end93.i
  %115 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %conf.i, align 4
  %117 = and i16 %116, -16
  store i16 %117, ptr %conf.i, align 4
  %conv8.i.i = zext i16 %117 to i32
  %call9.i.i = call i32 @ad_sd_write_reg(ptr noundef %sd.i, i32 noundef 2, i32 noundef 2, i32 noundef %conv8.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool101.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool101.not.i, label %if.end103.i, label %if.end98.i.do.end338.i_crit_edge

if.end98.i.do.end338.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end338.i

if.end103.i:                                      ; preds = %if.end98.i
  %118 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %33, align 128
  %flags105.i = getelementptr inbounds %struct.ad7793_chip_info, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %flags105.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags105.i, align 4
  %and106.i = and i32 %121, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.end103.i.if.end116.i_crit_edge, label %if.then108.i

if.end103.i.if.end116.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116.i

if.then108.i:                                     ; preds = %if.end103.i
  %exitation_current.i = getelementptr inbounds %struct.ad7793_platform_data, ptr %1, i32 0, i32 7
  %122 = ptrtoint ptr %exitation_current.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %exitation_current.i, align 4
  %124 = ptrtoint ptr %current_source_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %current_source_direction.i.i, align 4
  %shl110.i = shl i32 %125, 2
  %or111.i = or i32 %shl110.i, %123
  %call112.i = call i32 @ad_sd_write_reg(ptr noundef %sd.i, i32 noundef 5, i32 noundef 1, i32 noundef %or111.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.then108.i.if.end116.i_crit_edge, label %if.then108.i.do.end338.i_crit_edge

if.then108.i.do.end338.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end338.i

if.then108.i.if.end116.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then108.i.if.end116.i_crit_edge, %if.end103.i.if.end116.i_crit_edge
  %call.i.i108 = call i32 @ad_sd_calibrate_all(ptr noundef %sd.i, ptr noundef nonnull @ad7793_calib_arr, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %tobool118.not.i = icmp eq i32 %call.i.i108, 0
  br i1 %tobool118.not.i, label %for.cond.preheader.i, label %if.end116.i.do.end338.i_crit_edge

if.end116.i.do.end338.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end338.i

for.cond.preheader.i:                             ; preds = %if.end116.i
  %conv123.i = zext i32 %vref_mv.0 to i64
  %mul.i = mul nuw nsw i64 %conv123.i, 100000000
  br label %if.end327.i

if.end327.i:                                      ; preds = %if.end327.i.if.end327.i_crit_edge, %for.cond.preheader.i
  %i.0482.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end327.i.if.end327.i_crit_edge ]
  %126 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %33, align 128
  %channels.i = getelementptr inbounds %struct.ad7793_chip_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %channels.i, align 4
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %129, i32 0, i32 5, i32 1
  %130 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %realbits.i, align 1
  %conv125.i = zext i8 %131 to i32
  %132 = ptrtoint ptr %conf.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %conf.i, align 4
  %134 = lshr i16 %133, 12
  %.lobit.i = and i16 %134, 1
  %135 = xor i16 %.lobit.i, 1
  %136 = zext i16 %135 to i32
  %sub.i = sub nsw i32 %conv125.i, %136
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %sh_prom131.i = zext i32 %i.0482.i to i64
  %shr132.i = lshr i64 %shr.i, %sh_prom131.i
  %conv157.i = trunc i64 %shr132.i to i32
  %137 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %shr132.i) #11, !srcloc !99
  %138 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %shr132.i, i64 %137, i32 0) #11, !srcloc !100
  %asmresult10.i.i = extractvalue { i64, i32 } %138, 0
  %div306476.i = lshr i64 %asmresult10.i.i, 26
  %conv307.i = trunc i64 %div306476.i to i32
  %mul308.neg.i = mul i32 %conv307.i, -100000000
  %sub309.i = add i32 %mul308.neg.i, %conv157.i
  %mul329.i = mul i32 %sub309.i, 10
  %arrayidx330.i = getelementptr %struct.ad7793_state, ptr %33, i32 0, i32 5, i32 %i.0482.i
  %arrayidx331.i = getelementptr %struct.ad7793_state, ptr %33, i32 0, i32 5, i32 %i.0482.i, i32 1
  %139 = ptrtoint ptr %arrayidx331.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mul329.i, ptr %arrayidx331.i, align 4
  %140 = ptrtoint ptr %arrayidx330.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv307.i, ptr %arrayidx330.i, align 8
  %inc.i = add nuw nsw i32 %i.0482.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %if.end57, label %if.end327.i.if.end327.i_crit_edge

if.end327.i.if.end327.i_crit_edge:                ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end327.i

do.end338.i:                                      ; preds = %if.end116.i.do.end338.i_crit_edge, %if.then108.i.do.end338.i_crit_edge, %if.end98.i.do.end338.i_crit_edge, %if.end93.i.do.end338.i_crit_edge, %if.then12.i, %if.end4.i.do.end338.i_crit_edge, %if.end.i.do.end338.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.end.i.do.end338.i_crit_edge ], [ %call6.i, %if.end4.i.do.end338.i_crit_edge ], [ -19, %if.then12.i ], [ %call10.i.i, %if.end93.i.do.end338.i_crit_edge ], [ %call9.i.i, %if.end98.i.do.end338.i_crit_edge ], [ %call112.i, %if.then108.i.do.end338.i_crit_edge ], [ %call.i.i108, %if.end116.i.do.end338.i_crit_edge ]
  %141 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sd.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.18) #10
  br label %ad7793_setup.exit.thread

ad7793_setup.exit.thread:                         ; preds = %do.end338.i, %land.lhs.true31.i.i.ad7793_setup.exit.thread_crit_edge, %land.lhs.true23.i.i.ad7793_setup.exit.thread_crit_edge, %land.lhs.true15.i.i.ad7793_setup.exit.thread_crit_edge, %land.lhs.true7.i.i.ad7793_setup.exit.thread_crit_edge, %land.lhs.true.i.i.ad7793_setup.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %land.lhs.true31.i.i.ad7793_setup.exit.thread_crit_edge ], [ -22, %land.lhs.true23.i.i.ad7793_setup.exit.thread_crit_edge ], [ -22, %land.lhs.true15.i.i.ad7793_setup.exit.thread_crit_edge ], [ -22, %land.lhs.true7.i.i.ad7793_setup.exit.thread_crit_edge ], [ -22, %land.lhs.true.i.i.ad7793_setup.exit.thread_crit_edge ], [ %ret.0.i, %do.end338.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  br label %cleanup

if.end57:                                         ; preds = %if.end327.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  %call59 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %ad7793_setup.exit.thread, %if.end40.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end23.cleanup_crit_edge, %if.then20, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %9, %if.then20 ], [ %call59, %if.end57 ], [ -19, %do.end6 ], [ -19, %do.end ], [ -12, %if.end8.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call36, %if.end34.cleanup_crit_edge ], [ %call50, %if.end40.cleanup_crit_edge ], [ %retval.0.i.ph, %ad7793_setup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7793_reg_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_ad_sd_setup_buffer_and_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7793_set_channel(ptr noundef %sd, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr i8, ptr %sd, i32 -116
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %conf, align 4
  %2 = and i16 %1, -16
  %3 = trunc i32 %channel to i16
  %4 = and i16 %3, 15
  %conv5 = or i16 %2, %4
  store i16 %conv5, ptr %conf, align 4
  %conv8 = zext i16 %conv5 to i32
  %call9 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 2, i32 noundef 2, i32 noundef %conv8) #7
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7793_set_mode(ptr noundef %sd, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr i8, ptr %sd, i32 -118
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode1, align 2
  %2 = and i16 %1, 8191
  %mode.tr = trunc i32 %mode to i16
  %3 = shl i16 %mode.tr, 13
  %conv6 = or i16 %2, %3
  store i16 %conv6, ptr %mode1, align 2
  %conv9 = zext i16 %conv6 to i32
  %call10 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 1, i32 noundef 2, i32 noundef %conv9) #7
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7793_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %conf = getelementptr inbounds %struct.ad7793_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %conf, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4096
  %4 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb26
    i32 12, label %sw.bb246
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @ad_sigma_delta_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2. = select i1 %cmp, i32 %call2, i32 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %6, label %sw.bb4.cleanup_crit_edge [
    i32 0, label %sw.bb5
    i32 9, label %sw.bb4.sw.epilog_crit_edge
  ]

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb4
  %differential = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %8 = ptrtoint ptr %differential to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %differential, align 4
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then7

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %10 = lshr i32 %conv, 8
  %and10 = and i32 %10, 7
  %arrayidx = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 %and10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  %14 = ptrtoint ptr %conf to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %conf, align 4
  %16 = lshr i16 %15, 8
  %17 = and i16 %16, 7
  %and16 = zext i16 %17 to i32
  %arrayidx18 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 %and16, i32 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val2, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge
  %scale_uv.0 = phi i64 [ 7020000000000, %sw.bb5.sw.epilog_crit_edge ], [ 1444444444444444, %sw.bb4.sw.epilog_crit_edge ]
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %realbits, align 1
  %conv21 = zext i8 %22 to i32
  %and.lobit361 = lshr exact i32 %and, 12
  %.neg362 = add nsw i32 %and.lobit361, -1
  %sub = add nsw i32 %.neg362, %conv21
  %sh_prom = zext i32 %sub to i64
  %shr24 = lshr i64 %scale_uv.0, %sh_prom
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val, align 4
  %conv25 = trunc i64 %shr24 to i32
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv25, ptr %val2, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then28, label %sw.bb26.if.end34_crit_edge

sw.bb26.if.end34_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then28:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %realbits30 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %realbits30 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %realbits30, align 1
  %conv31 = zext i8 %26 to i32
  %sub32 = add nsw i32 %conv31, -1
  %shl.neg = shl nsw i32 -1, %sub32
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %sw.bb26.if.end34_crit_edge
  %storemerge = phi i32 [ %shl.neg, %if.then28 ], [ 0, %sw.bb26.if.end34_crit_edge ]
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %val, align 4
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %29)
  %cmp36 = icmp eq i32 %29, 9
  br i1 %cmp36, label %if.end240, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end240:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %realbits40 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %realbits40 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %realbits40, align 1
  %conv41 = zext i8 %31 to i32
  %and.lobit = lshr exact i32 %and, 12
  %.neg = add nsw i32 %and.lobit, -1
  %sub45 = add nsw i32 %.neg, %conv41
  %sh_prom46 = zext i32 %sub45 to i64
  %shl47 = shl i64 273, %sh_prom46
  %32 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3270336899494214137, i64 %shl47) #11, !srcloc !99
  %33 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3270336899494214137, i64 %shl47, i64 %32) #11, !srcloc !101
  %div219358 = lshr i64 %33, 8
  %extract.t360 = trunc i64 %div219358 to i32
  %conv244 = sub i32 %storemerge, %extract.t360
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv244, ptr %val, align 4
  br label %cleanup

sw.bb246:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 128
  %sample_freq_avail = getelementptr inbounds %struct.ad7793_chip_info, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %sample_freq_avail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sample_freq_avail, align 4
  %mode = getelementptr inbounds %struct.ad7793_state, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mode, align 2
  %41 = and i16 %40, 15
  %and248 = zext i16 %41 to i32
  %arrayidx249 = getelementptr i16, ptr %38, i32 %and248
  %42 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx249, align 2
  %conv250 = zext i16 %43 to i32
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv250, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb246, %if.end240, %if.end34.cleanup_crit_edge, %sw.epilog, %if.then7, %sw.bb4.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb246 ], [ 3, %sw.epilog ], [ 3, %if.then7 ], [ %call2., %sw.bb ], [ -22, %sw.bb4.cleanup_crit_edge ], [ 1, %if.end240 ], [ 1, %if.end34.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7793_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scale_avail = getelementptr inbounds %struct.ad7793_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %scale_avail, ptr %vals, align 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %type, align 4
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7793_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mask, label %if.end.sw.epilog_crit_edge [
    i32 2, label %for.body.preheader
    i32 12, label %sw.bb23
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.preheader:                               ; preds = %if.end
  %arrayidx2 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val2)
  %cmp3 = icmp eq i32 %4, %val2
  br i1 %cmp3, label %for.body.preheader.if.then4_crit_edge, label %for.inc

for.body.preheader.if.then4_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %for.inc.6.if.then4_crit_edge, %for.inc.5.if.then4_crit_edge, %for.inc.4.if.then4_crit_edge, %for.inc.3.if.then4_crit_edge, %for.inc.2.if.then4_crit_edge, %for.inc.1.if.then4_crit_edge, %for.inc.if.then4_crit_edge, %for.body.preheader.if.then4_crit_edge
  %i.089.lcssa = phi i16 [ 0, %for.body.preheader.if.then4_crit_edge ], [ 256, %for.inc.if.then4_crit_edge ], [ 512, %for.inc.1.if.then4_crit_edge ], [ 768, %for.inc.2.if.then4_crit_edge ], [ 1024, %for.inc.3.if.then4_crit_edge ], [ 1280, %for.inc.4.if.then4_crit_edge ], [ 1536, %for.inc.5.if.then4_crit_edge ], [ 1792, %for.inc.6.if.then4_crit_edge ]
  %conf = getelementptr inbounds %struct.ad7793_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %conf, align 4
  %and = and i16 %6, -1793
  %conv11 = or i16 %and, %i.089.lcssa
  store i16 %conv11, ptr %conf, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %conv11)
  %cmp14 = icmp eq i16 %6, %conv11
  br i1 %cmp14, label %if.then4.sw.epilog_crit_edge, label %if.end17

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end17:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = zext i16 %conv11 to i32
  %sd = getelementptr inbounds %struct.ad7793_state, ptr %1, i32 0, i32 7
  %call20 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 2, i32 noundef 2, i32 noundef %conv13) #7
  %call.i = tail call i32 @ad_sd_calibrate_all(ptr noundef %sd, ptr noundef nonnull @ad7793_calib_arr, i32 noundef 6) #7
  br label %sw.epilog

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx2.1 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val2)
  %cmp3.1 = icmp eq i32 %8, %val2
  br i1 %cmp3.1, label %for.inc.if.then4_crit_edge, label %for.inc.1

for.inc.if.then4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

for.inc.1:                                        ; preds = %for.inc
  %arrayidx2.2 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val2)
  %cmp3.2 = icmp eq i32 %10, %val2
  br i1 %cmp3.2, label %for.inc.1.if.then4_crit_edge, label %for.inc.2

for.inc.1.if.then4_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx2.3 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val2)
  %cmp3.3 = icmp eq i32 %12, %val2
  br i1 %cmp3.3, label %for.inc.2.if.then4_crit_edge, label %for.inc.3

for.inc.2.if.then4_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx2.4 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val2)
  %cmp3.4 = icmp eq i32 %14, %val2
  br i1 %cmp3.4, label %for.inc.3.if.then4_crit_edge, label %for.inc.4

for.inc.3.if.then4_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx2.5 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val2)
  %cmp3.5 = icmp eq i32 %16, %val2
  br i1 %cmp3.5, label %for.inc.4.if.then4_crit_edge, label %for.inc.5

for.inc.4.if.then4_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx2.6 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val2)
  %cmp3.6 = icmp eq i32 %18, %val2
  br i1 %cmp3.6, label %for.inc.5.if.then4_crit_edge, label %for.inc.6

for.inc.5.if.then4_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx2.7 = getelementptr %struct.ad7793_state, ptr %1, i32 0, i32 5, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val2)
  %cmp3.7 = icmp eq i32 %20, %val2
  br i1 %cmp3.7, label %for.inc.6.if.then4_crit_edge, label %for.inc.6.sw.epilog_crit_edge

for.inc.6.sw.epilog_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc.6.if.then4_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool24.not = icmp eq i32 %val, 0
  br i1 %tobool24.not, label %sw.bb23.sw.epilog_crit_edge, label %for.cond27.preheader

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond27.preheader:                             ; preds = %sw.bb23
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %sample_freq_avail = getelementptr inbounds %struct.ad7793_chip_info, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %sample_freq_avail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sample_freq_avail, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  %conv32 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32, i32 %val)
  %cmp33 = icmp eq i32 %conv32, %val
  br i1 %cmp33, label %for.cond27.preheader.if.end43_crit_edge, label %for.inc37

for.cond27.preheader.if.end43_crit_edge:          ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37:                                        ; preds = %for.cond27.preheader
  %arrayidx31.1 = getelementptr i16, ptr %24, i32 1
  %27 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx31.1, align 2
  %conv32.1 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.1, i32 %val)
  %cmp33.1 = icmp eq i32 %conv32.1, %val
  br i1 %cmp33.1, label %for.inc37.if.end43_crit_edge, label %for.inc37.1

for.inc37.if.end43_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.1:                                      ; preds = %for.inc37
  %arrayidx31.2 = getelementptr i16, ptr %24, i32 2
  %29 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx31.2, align 2
  %conv32.2 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.2, i32 %val)
  %cmp33.2 = icmp eq i32 %conv32.2, %val
  br i1 %cmp33.2, label %for.inc37.1.if.end43_crit_edge, label %for.inc37.2

for.inc37.1.if.end43_crit_edge:                   ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.2:                                      ; preds = %for.inc37.1
  %arrayidx31.3 = getelementptr i16, ptr %24, i32 3
  %31 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx31.3, align 2
  %conv32.3 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.3, i32 %val)
  %cmp33.3 = icmp eq i32 %conv32.3, %val
  br i1 %cmp33.3, label %for.inc37.2.if.end43_crit_edge, label %for.inc37.3

for.inc37.2.if.end43_crit_edge:                   ; preds = %for.inc37.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.3:                                      ; preds = %for.inc37.2
  %arrayidx31.4 = getelementptr i16, ptr %24, i32 4
  %33 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx31.4, align 2
  %conv32.4 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.4, i32 %val)
  %cmp33.4 = icmp eq i32 %conv32.4, %val
  br i1 %cmp33.4, label %for.inc37.3.if.end43_crit_edge, label %for.inc37.4

for.inc37.3.if.end43_crit_edge:                   ; preds = %for.inc37.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.4:                                      ; preds = %for.inc37.3
  %arrayidx31.5 = getelementptr i16, ptr %24, i32 5
  %35 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx31.5, align 2
  %conv32.5 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.5, i32 %val)
  %cmp33.5 = icmp eq i32 %conv32.5, %val
  br i1 %cmp33.5, label %for.inc37.4.if.end43_crit_edge, label %for.inc37.5

for.inc37.4.if.end43_crit_edge:                   ; preds = %for.inc37.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.5:                                      ; preds = %for.inc37.4
  %arrayidx31.6 = getelementptr i16, ptr %24, i32 6
  %37 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx31.6, align 2
  %conv32.6 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.6, i32 %val)
  %cmp33.6 = icmp eq i32 %conv32.6, %val
  br i1 %cmp33.6, label %for.inc37.5.if.end43_crit_edge, label %for.inc37.6

for.inc37.5.if.end43_crit_edge:                   ; preds = %for.inc37.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.6:                                      ; preds = %for.inc37.5
  %arrayidx31.7 = getelementptr i16, ptr %24, i32 7
  %39 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx31.7, align 2
  %conv32.7 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.7, i32 %val)
  %cmp33.7 = icmp eq i32 %conv32.7, %val
  br i1 %cmp33.7, label %for.inc37.6.if.end43_crit_edge, label %for.inc37.7

for.inc37.6.if.end43_crit_edge:                   ; preds = %for.inc37.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.7:                                      ; preds = %for.inc37.6
  %arrayidx31.8 = getelementptr i16, ptr %24, i32 8
  %41 = ptrtoint ptr %arrayidx31.8 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx31.8, align 2
  %conv32.8 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.8, i32 %val)
  %cmp33.8 = icmp eq i32 %conv32.8, %val
  br i1 %cmp33.8, label %for.inc37.7.if.end43_crit_edge, label %for.inc37.8

for.inc37.7.if.end43_crit_edge:                   ; preds = %for.inc37.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.8:                                      ; preds = %for.inc37.7
  %arrayidx31.9 = getelementptr i16, ptr %24, i32 9
  %43 = ptrtoint ptr %arrayidx31.9 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx31.9, align 2
  %conv32.9 = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.9, i32 %val)
  %cmp33.9 = icmp eq i32 %conv32.9, %val
  br i1 %cmp33.9, label %for.inc37.8.if.end43_crit_edge, label %for.inc37.9

for.inc37.8.if.end43_crit_edge:                   ; preds = %for.inc37.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.9:                                      ; preds = %for.inc37.8
  %arrayidx31.10 = getelementptr i16, ptr %24, i32 10
  %45 = ptrtoint ptr %arrayidx31.10 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx31.10, align 2
  %conv32.10 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.10, i32 %val)
  %cmp33.10 = icmp eq i32 %conv32.10, %val
  br i1 %cmp33.10, label %for.inc37.9.if.end43_crit_edge, label %for.inc37.10

for.inc37.9.if.end43_crit_edge:                   ; preds = %for.inc37.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.10:                                     ; preds = %for.inc37.9
  %arrayidx31.11 = getelementptr i16, ptr %24, i32 11
  %47 = ptrtoint ptr %arrayidx31.11 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx31.11, align 2
  %conv32.11 = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.11, i32 %val)
  %cmp33.11 = icmp eq i32 %conv32.11, %val
  br i1 %cmp33.11, label %for.inc37.10.if.end43_crit_edge, label %for.inc37.11

for.inc37.10.if.end43_crit_edge:                  ; preds = %for.inc37.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.11:                                     ; preds = %for.inc37.10
  %arrayidx31.12 = getelementptr i16, ptr %24, i32 12
  %49 = ptrtoint ptr %arrayidx31.12 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx31.12, align 2
  %conv32.12 = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.12, i32 %val)
  %cmp33.12 = icmp eq i32 %conv32.12, %val
  br i1 %cmp33.12, label %for.inc37.11.if.end43_crit_edge, label %for.inc37.12

for.inc37.11.if.end43_crit_edge:                  ; preds = %for.inc37.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.12:                                     ; preds = %for.inc37.11
  %arrayidx31.13 = getelementptr i16, ptr %24, i32 13
  %51 = ptrtoint ptr %arrayidx31.13 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx31.13, align 2
  %conv32.13 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.13, i32 %val)
  %cmp33.13 = icmp eq i32 %conv32.13, %val
  br i1 %cmp33.13, label %for.inc37.12.if.end43_crit_edge, label %for.inc37.13

for.inc37.12.if.end43_crit_edge:                  ; preds = %for.inc37.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.13:                                     ; preds = %for.inc37.12
  %arrayidx31.14 = getelementptr i16, ptr %24, i32 14
  %53 = ptrtoint ptr %arrayidx31.14 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx31.14, align 2
  %conv32.14 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.14, i32 %val)
  %cmp33.14 = icmp eq i32 %conv32.14, %val
  br i1 %cmp33.14, label %for.inc37.13.if.end43_crit_edge, label %for.inc37.14

for.inc37.13.if.end43_crit_edge:                  ; preds = %for.inc37.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.inc37.14:                                     ; preds = %for.inc37.13
  %arrayidx31.15 = getelementptr i16, ptr %24, i32 15
  %55 = ptrtoint ptr %arrayidx31.15 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx31.15, align 2
  %conv32.15 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.15, i32 %val)
  %cmp33.15 = icmp eq i32 %conv32.15, %val
  br i1 %cmp33.15, label %for.inc37.14.if.end43_crit_edge, label %for.inc37.14.sw.epilog_crit_edge

for.inc37.14.sw.epilog_crit_edge:                 ; preds = %for.inc37.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc37.14.if.end43_crit_edge:                  ; preds = %for.inc37.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %for.inc37.14.if.end43_crit_edge, %for.inc37.13.if.end43_crit_edge, %for.inc37.12.if.end43_crit_edge, %for.inc37.11.if.end43_crit_edge, %for.inc37.10.if.end43_crit_edge, %for.inc37.9.if.end43_crit_edge, %for.inc37.8.if.end43_crit_edge, %for.inc37.7.if.end43_crit_edge, %for.inc37.6.if.end43_crit_edge, %for.inc37.5.if.end43_crit_edge, %for.inc37.4.if.end43_crit_edge, %for.inc37.3.if.end43_crit_edge, %for.inc37.2.if.end43_crit_edge, %for.inc37.1.if.end43_crit_edge, %for.inc37.if.end43_crit_edge, %for.cond27.preheader.if.end43_crit_edge
  %i.188.lcssa = phi i16 [ 0, %for.cond27.preheader.if.end43_crit_edge ], [ 1, %for.inc37.if.end43_crit_edge ], [ 2, %for.inc37.1.if.end43_crit_edge ], [ 3, %for.inc37.2.if.end43_crit_edge ], [ 4, %for.inc37.3.if.end43_crit_edge ], [ 5, %for.inc37.4.if.end43_crit_edge ], [ 6, %for.inc37.5.if.end43_crit_edge ], [ 7, %for.inc37.6.if.end43_crit_edge ], [ 8, %for.inc37.7.if.end43_crit_edge ], [ 9, %for.inc37.8.if.end43_crit_edge ], [ 10, %for.inc37.9.if.end43_crit_edge ], [ 11, %for.inc37.10.if.end43_crit_edge ], [ 12, %for.inc37.11.if.end43_crit_edge ], [ 13, %for.inc37.12.if.end43_crit_edge ], [ 14, %for.inc37.13.if.end43_crit_edge ], [ 15, %for.inc37.14.if.end43_crit_edge ]
  %mode = getelementptr inbounds %struct.ad7793_state, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mode, align 2
  %59 = and i16 %58, -16
  %conv51 = or i16 %59, %i.188.lcssa
  store i16 %conv51, ptr %mode, align 2
  %sd52 = getelementptr inbounds %struct.ad7793_state, ptr %1, i32 0, i32 7
  %conv54 = zext i16 %conv51 to i32
  %call55 = tail call i32 @ad_sd_write_reg(ptr noundef %sd52, i32 noundef 1, i32 noundef 2, i32 noundef %conv54) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end43, %for.inc37.14.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %for.inc.6.sw.epilog_crit_edge, %if.end17, %if.then4.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end43 ], [ 0, %if.then4.sw.epilog_crit_edge ], [ 0, %if.end17 ], [ -22, %sw.bb23.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ -22, %for.inc.6.sw.epilog_crit_edge ], [ -22, %for.inc37.14.sw.epilog_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7793_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_validate_trigger(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sigma_delta_single_conversion(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_calibrate_all(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_read_reg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ad7793__290_865_ad7793_driver_init6, !1, !"__initcall__kmod_ad7793__290_865_ad7793_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7793.c", i32 865, i32 1}
!2 = !{ptr @__exitcall_ad7793_driver_exit, !1, !"__exitcall_ad7793_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7793.c", i32 867, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7793.c", i32 868, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7793.c", i32 869, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7793.c", i32 860, i32 11}
!12 = !{ptr @ad7793_driver, !13, !"ad7793_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7793.c", i32 858, i32 26}
!14 = !{ptr @ad7793_id, !15, !"ad7793_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7793.c", i32 844, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7793.c", i32 785, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad7793_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad7793_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7793.c", i32 790, i32 3}
!26 = !{ptr @ad7793_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ad7793_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7793.c", i32 803, i32 43}
!30 = !{ptr @ad7793_sigma_delta_info, !31, !"ad7793_sigma_delta_info", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad7793.c", i32 203, i32 41}
!32 = !{ptr @ad7793_chip_info_tbl, !33, !"ad7793_chip_info_tbl", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ad7793.c", i32 670, i32 38}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ad7793.c", i32 660, i32 8}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ad7785_channels, !35, !"ad7785_channels", i1 false, i1 false}
!38 = !{ptr @ad7793_info, !39, !"ad7793_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ad7793.c", i32 533, i32 30}
!40 = !{ptr @ad7793_attribute_group, !41, !"ad7793_attribute_group", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ad7793.c", i32 383, i32 37}
!42 = !{ptr @ad7793_attributes, !43, !"ad7793_attributes", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ad7793.c", i32 378, i32 26}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/ad7793.c", i32 352, i32 8}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iio_const_attr_sampling_frequency_available, !45, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!48 = !{ptr @ad7793_calib_arr, !49, !"ad7793_calib_arr", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ad7793.c", i32 212, i32 38}
!50 = !{ptr @ad7793_sample_freq_avail, !51, !"ad7793_sample_freq_avail", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/ad7793.c", i32 346, i32 18}
!52 = !{ptr @ad7792_channels, !53, !"ad7792_channels", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/ad7793.c", i32 661, i32 8}
!54 = !{ptr @ad7793_channels, !55, !"ad7793_channels", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/ad7793.c", i32 662, i32 8}
!56 = !{ptr @ad7794_channels, !57, !"ad7794_channels", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/ad7793.c", i32 663, i32 8}
!58 = !{ptr @ad7795_channels, !59, !"ad7795_channels", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/ad7793.c", i32 664, i32 8}
!60 = !{ptr @ad7796_channels, !61, !"ad7796_channels", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/ad7793.c", i32 665, i32 8}
!62 = !{ptr @ad7797_info, !63, !"ad7797_info", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/ad7793.c", i32 542, i32 30}
!64 = !{ptr @ad7797_attribute_group, !65, !"ad7797_attribute_group", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/ad7793.c", i32 392, i32 37}
!66 = !{ptr @ad7797_attributes, !67, !"ad7797_attributes", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/ad7793.c", i32 387, i32 26}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/ad7793.c", i32 355, i32 8}
!70 = !{ptr @iio_const_attr_sampling_frequency_available_ad7797, !69, !"iio_const_attr_sampling_frequency_available_ad7797", i1 false, i1 false}
!71 = !{ptr @ad7797_sample_freq_avail, !72, !"ad7797_sample_freq_avail", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/ad7793.c", i32 349, i32 18}
!73 = !{ptr @ad7797_channels, !74, !"ad7797_channels", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/ad7793.c", i32 666, i32 8}
!75 = !{ptr @ad7798_channels, !76, !"ad7798_channels", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/ad7793.c", i32 667, i32 8}
!77 = !{ptr @ad7799_channels, !78, !"ad7799_channels", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/ad7793.c", i32 668, i32 8}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/ad7793.c", i32 283, i32 3}
!81 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ad7793_setup._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ad7793_setup._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.18, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/ad7793.c", i32 342, i32 2}
!86 = !{ptr @ad7793_setup._entry.17, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ad7793_setup._entry_ptr.19, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{i8 0, i8 2}
!99 = !{i64 1164349, i64 1164376}
!100 = !{i64 1165044, i64 1165071, i64 1165104, i64 1165125, i64 1165152, i64 1165178}
!101 = !{i64 1164859, i64 1164886, i64 1164920, i64 1164941}
