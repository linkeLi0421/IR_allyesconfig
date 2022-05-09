; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7192.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7192.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ad_sigma_delta_info = type { ptr, ptr, ptr, i8, i32, i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.ad_sd_calib_data = type { i32, i32 }
%struct.ad7192_chip_info = type { i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad7192_state = type { ptr, ptr, ptr, ptr, i16, i32, i32, i32, i32, [8 x [2 x i32]], i8, i8, %struct.mutex, [8 x i8], [52 x i8], %struct.ad_sigma_delta }
%struct.ad_sigma_delta = type { ptr, ptr, %struct.completion, i8, i8, i8, i8, ptr, [56 x i8], [4 x i8], [4 x i8], [16 x i8], [104 x i8] }

@__initcall__kmod_ad7192__290_1046_ad7192_driver_init6 = internal global ptr @ad7192_driver_init, section ".initcall6.init", align 4
@ad7192_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ad7192_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7192_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7192_driver_exit = internal global ptr @ad7192_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad7192.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [69 x i8] c"ad7192.description=Analog Devices AD7190, AD7192, AD7193, AD7195 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad7192.file=drivers/iio/adc/ad7192\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad7192.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7192\00", [25 x i8] zeroinitializer }, align 32
@ad7192_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7190\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ad7192_chip_info_tbl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7192\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad7192_chip_info_tbl, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7193\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad7192_chip_info_tbl, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7195\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad7192_chip_info_tbl, i64 24) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ad7192_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 930, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no IRQ?\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7192_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad7192.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7192_probe._entry_ptr = internal global ptr @ad7192_probe._entry, section ".printk_index", align 4
@ad7192_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@ad7192_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 948, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable specified AVdd supply\0A\00", [56 x i8] zeroinitializer }, align 32
@ad7192_probe._entry_ptr.10 = internal global ptr @ad7192_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@ad7192_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 962, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable specified DVdd supply\0A\00", [56 x i8] zeroinitializer }, align 32
@ad7192_probe._entry_ptr.14 = internal global ptr @ad7192_probe._entry.12, section ".printk_index", align 4
@ad7192_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 972, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Device tree error, reference voltage undefined\0A\00", [48 x i8] zeroinitializer }, align 32
@ad7192_probe._entry_ptr.17 = internal global ptr @ad7192_probe._entry.15, section ".printk_index", align 4
@ad7195_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7195_attribute_group, ptr @ad7192_read_raw, ptr null, ptr @ad7192_read_avail, ptr @ad7192_write_raw, ptr null, ptr @ad7192_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr @ad_sd_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7192_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7192_attribute_group, ptr @ad7192_read_raw, ptr null, ptr @ad7192_read_avail, ptr @ad7192_write_raw, ptr null, ptr @ad7192_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr @ad_sd_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7192_sigma_delta_info = internal constant { %struct.ad_sigma_delta_info, [32 x i8] } { %struct.ad_sigma_delta_info { ptr @ad7192_set_channel, ptr @ad7192_set_mode, ptr null, i8 1, i32 3, i32 64, i32 0, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@ad7192_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1018, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"External clock frequency out of bounds\0A\00", [56 x i8] zeroinitializer }, align 32
@ad7192_probe._entry_ptr.21 = internal global ptr @ad7192_probe._entry.19, section ".printk_index", align 4
@ad7193_channels = internal constant { [15 x %struct.iio_chan_spec], [344 x i8] } { [15 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 1, i32 2, i32 1, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 4, i32 2, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 6, i32 4, i32 2, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 8, i32 8, i32 3, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 256, i32 4, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 -1, i32 512, i32 5, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr @.str.22, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 -1, i32 1025, i32 6, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 -1, i32 1026, i32 7, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 1028, i32 8, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 -1, i32 1032, i32 9, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 -1, i32 1040, i32 10, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 -1, i32 1056, i32 11, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 -1, i32 1088, i32 12, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 -1, i32 1152, i32 13, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 14, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [344 x i8] zeroinitializer }, align 32
@ad7192_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 1, i32 2, i32 1, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 4, i32 2, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 9, i32 0, i32 -1, i32 4, i32 2, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 -1, i32 8, i32 3, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr @.str.22, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 -1, i32 16, i32 4, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 -1, i32 32, i32 5, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 -1, i32 64, i32 6, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 -1, i32 128, i32 7, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 1 }, i32 9, i32 0, i32 4, i32 4, i32 0, i32 0, i32 5120, i32 0, ptr null, i32 0, ptr @ad7192_calibsys_ext_info, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@ad7192_calibsys_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.23, i32 0, ptr null, ptr @ad7192_write_syscalib, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.24, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ad7192_syscalib_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.25, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ad7192_syscalib_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shorted\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_calibration\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_calibration_mode\00", [43 x i8] zeroinitializer }, align 32
@ad7192_syscalib_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ad7192_syscalib_modes, i32 2, ptr @ad7192_set_syscalib_mode, ptr @ad7192_get_syscalib_mode }, [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sys_calibration_mode_available\00", [33 x i8] zeroinitializer }, align 32
@ad7192_syscalib_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zero_scale\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full_scale\00", [21 x i8] zeroinitializer }, align 32
@ad7195_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7195_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7195_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_filter_low_pass_3db_frequency_available, ptr @iio_dev_attr_bridge_switch_en, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_filter_low_pass_3db_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7192_show_filter_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_bridge_switch_en = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7192_show_bridge_switch, ptr @ad7192_set }, i64 5, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"filter_low_pass_3db_frequency_available\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d \00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bridge_switch_en\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ad7192_calib_arr = internal constant { [8 x %struct.ad_sd_calib_data], [32 x i8] } { [8 x %struct.ad_sd_calib_data] [%struct.ad_sd_calib_data { i32 4, i32 16 }, %struct.ad_sd_calib_data { i32 5, i32 16 }, %struct.ad_sd_calib_data { i32 4, i32 32 }, %struct.ad_sd_calib_data { i32 5, i32 32 }, %struct.ad_sd_calib_data { i32 4, i32 64 }, %struct.ad_sd_calib_data { i32 5, i32 64 }, %struct.ad_sd_calib_data { i32 4, i32 128 }, %struct.ad_sd_calib_data { i32 5, i32 128 }], [32 x i8] zeroinitializer }, align 32
@ad7192_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7192_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7192_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_filter_low_pass_3db_frequency_available, ptr @iio_dev_attr_bridge_switch_en, ptr @iio_dev_attr_ac_excitation_en, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_ac_excitation_en = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7192_show_ac_excitation, ptr @ad7192_set }, i64 1, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ac_excitation_en\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adi,int-clock-output-enable\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,clock-xtal\00", [17 x i8] zeroinitializer }, align 32
@ad7192_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 367, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"device ID query failed (0x%X)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7192_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ad7192_setup._entry_ptr = internal global ptr @ad7192_setup._entry, section ".printk_index", align 4
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adi,rejection-60-Hz-enable\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,refin2-pins-enable\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adi,buffer-enable\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bipolar\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adi,burnout-currents-enable\00", [36 x i8] zeroinitializer }, align 32
@ad7192_setup._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.3, i32 400, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Can't enable burnout currents: see CHOP or buffer\0A\00", [45 x i8] zeroinitializer }, align 32
@ad7192_setup._entry_ptr.45 = internal global ptr @ad7192_setup._entry.43, section ".printk_index", align 4
@ad7192_chip_info_tbl = internal constant { [4 x %struct.ad7192_chip_info], [32 x i8] } { [4 x %struct.ad7192_chip_info] [%struct.ad7192_chip_info { i32 4, ptr @.str.46 }, %struct.ad7192_chip_info { i32 0, ptr @.str }, %struct.ad7192_chip_info { i32 2, ptr @.str.47 }, %struct.ad7192_chip_info { i32 6, ptr @.str.48 }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7190\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7193\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7195\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 10, i64 12]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 10, i64 12]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"ad7192_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1039, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1041, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"ad7192_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1030, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 930, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 940, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 942, i32 43 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 948, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 956, i32 43 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 962, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 972, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"ad7195_info\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 795, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"ad7192_info\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 786, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant [24 x i8] c"ad7192_sigma_delta_info\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 291, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 998, i32 46 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1017, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"ad7193_channels\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 858, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"ad7192_channels\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 846, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"ad7192_calibsys_ext_info\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 252, i32 44 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 864, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 254, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 258, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"ad7192_syscalib_mode_enum\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 245, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 260, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"ad7192_syscalib_modes\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 195, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 196, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 197, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"ad7195_attribute_group\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 562, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"ad7195_attributes\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 556, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [53 x i8] c"iio_dev_attr_filter_low_pass_3db_frequency_available\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [30 x i8] c"iio_dev_attr_bridge_switch_en\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 534, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 526, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 537, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 446, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"ad7192_calib_arr\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 300, i32 38 }
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"ad7192_attribute_group\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 552, i32 37 }
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"ad7192_attributes\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 545, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant [30 x i8] c"iio_dev_attr_ac_excitation_en\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 541, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 332, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 335, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 366, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 375, i32 39 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 379, i32 40 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 386, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 390, i32 38 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 395, i32 7 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 399, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [21 x i8] c"ad7192_chip_info_tbl\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 876, i32 38 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 879, i32 11 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 887, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [28 x i8] c"../drivers/iio/adc/ad7192.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 891, i32 11 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad7192_driver_exit, ptr @__initcall__kmod_ad7192__290_1046_ad7192_driver_init6, ptr @ad7192_driver_exit, ptr @ad7192_probe._entry, ptr @ad7192_probe._entry.12, ptr @ad7192_probe._entry.15, ptr @ad7192_probe._entry.19, ptr @ad7192_probe._entry.8, ptr @ad7192_probe._entry_ptr, ptr @ad7192_probe._entry_ptr.10, ptr @ad7192_probe._entry_ptr.14, ptr @ad7192_probe._entry_ptr.17, ptr @ad7192_probe._entry_ptr.21, ptr @ad7192_setup._entry, ptr @ad7192_setup._entry.43, ptr @ad7192_setup._entry_ptr, ptr @ad7192_setup._entry_ptr.45, ptr @ad7192_driver, ptr @.str, ptr @ad7192_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ad7192_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @ad7195_info, ptr @ad7192_info, ptr @ad7192_sigma_delta_info, ptr @.str.18, ptr @.str.20, ptr @ad7193_channels, ptr @ad7192_channels, ptr @ad7192_calibsys_ext_info, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ad7192_syscalib_mode_enum, ptr @.str.25, ptr @ad7192_syscalib_modes, ptr @.str.26, ptr @.str.27, ptr @ad7195_attribute_group, ptr @ad7195_attributes, ptr @iio_dev_attr_filter_low_pass_3db_frequency_available, ptr @iio_dev_attr_bridge_switch_en, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @ad7192_calib_arr, ptr @ad7192_attribute_group, ptr @ad7192_attributes, ptr @iio_dev_attr_ac_excitation_en, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @ad7192_chip_info_tbl, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7195_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_sigma_delta_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7193_channels to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_calibsys_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_syscalib_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_syscalib_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7195_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7195_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_filter_low_pass_3db_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_bridge_switch_en to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_calib_arr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_ac_excitation_en to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_setup._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7192_chip_info_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7192_driver) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7192_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7192_driver, i32 0, i32 4)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 512) #13
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7192_state, ptr %3, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ad7192_probe.__key) #13
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.7) #13
  %avdd = getelementptr inbounds %struct.ad7192_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %avdd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %avdd, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %call18 = tail call i32 @regulator_enable(ptr noundef %call10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #16
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %6 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %avdd, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7192_reg_disable, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end31, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %call.i222 = tail call i32 @regulator_disable(ptr noundef %7) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %call33 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.11) #13
  %dvdd = getelementptr inbounds %struct.ad7192_state, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dvdd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call33, ptr %dvdd, align 8
  %cmp.i212 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %call41 = tail call i32 @regulator_enable(ptr noundef %call33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13) #16
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %10 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvdd, align 8
  %call.i213 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7192_reg_disable, ptr noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool.not.i214 = icmp eq i32 %call.i213, 0
  br i1 %tobool.not.i214, label %if.end54, label %devm_add_action_or_reset.exit216

devm_add_action_or_reset.exit216:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %call.i223 = tail call i32 @regulator_disable(ptr noundef %11) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %12 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %avdd, align 4
  %call56 = tail call i32 @regulator_get_voltage(ptr noundef %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp = icmp slt i32 %call56, 0
  br i1 %cmp, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %div224 = udiv i32 %call56, 1000
  %conv = trunc i32 %div224 to i16
  %int_vref_mv = getelementptr inbounds %struct.ad7192_state, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %int_vref_mv to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %int_vref_mv, align 16
  %call64 = tail call ptr @of_device_get_match_data(ptr noundef %spi) #13
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call64, ptr %3, align 128
  %name = getelementptr inbounds %struct.ad7192_chip_info, ptr %call64, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %name66 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %18 = ptrtoint ptr %name66 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %name66, align 8
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %call, align 8
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cond.i = icmp eq i32 %25, 2
  %spec.select.i = select i1 %cond.i, ptr @ad7193_channels, ptr @ad7192_channels
  %spec.select1.i = select i1 %cond.i, i32 15, i32 9
  %26 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.select.i, ptr %26, align 8
  %28 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select1.i, ptr %28, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 128
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %cmp73 = icmp eq i32 %33, 6
  %spec.select = select i1 %cmp73, ptr @ad7195_info, ptr @ad7192_info
  %34 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %spec.select, ptr %34, align 8
  %sd = getelementptr inbounds %struct.ad7192_state, ptr %3, i32 0, i32 15
  %call78 = tail call i32 @ad_sd_init(ptr noundef %sd, ptr noundef nonnull %call, ptr noundef %spi, ptr noundef nonnull @ad7192_sigma_delta_info) #13
  %call80 = tail call i32 @devm_ad_sd_setup_buffer_and_trigger(ptr noundef %spi, ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end83:                                         ; preds = %if.end62
  %fclk = getelementptr inbounds %struct.ad7192_state, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4915200, ptr %fclk, align 4
  %call85 = tail call ptr @devm_clk_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.18) #13
  %mclk = getelementptr inbounds %struct.ad7192_state, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call85, ptr %mclk, align 4
  %cmp.i217 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %call85 to i32
  br label %cleanup

if.end91:                                         ; preds = %if.end83
  %call92 = tail call fastcc i32 @ad7192_of_clock_select(ptr noundef %3)
  %conv93 = trunc i32 %call92 to i8
  %clock_sel = getelementptr inbounds %struct.ad7192_state, ptr %3, i32 0, i32 11
  %39 = ptrtoint ptr %clock_sel to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv93, ptr %clock_sel, align 1
  %conv95 = and i32 %call92, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv95)
  %switch = icmp eq i32 %conv95, 0
  br i1 %switch, label %if.then102, label %if.end91.if.end126_crit_edge

if.end91.if.end126_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then102:                                       ; preds = %if.end91
  %40 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mclk, align 4
  %call104 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then102.cleanup_crit_edge, label %if.end108

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end108:                                        ; preds = %if.then102
  %42 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mclk, align 4
  %call.i218 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7192_clk_disable, ptr noundef %43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i219 = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i219, label %if.end114, label %devm_add_action_or_reset.exit221

devm_add_action_or_reset.exit221:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_disable(ptr noundef %43) #13
  tail call void @clk_unprepare(ptr noundef %43) #13
  br label %cleanup

if.end114:                                        ; preds = %if.end108
  %44 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mclk, align 4
  %call116 = tail call i32 @clk_get_rate(ptr noundef %45) #13
  %46 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call116, ptr %fclk, align 4
  %47 = add i32 %call116, -2457600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2662401, i32 %47)
  %48 = icmp ult i32 %47, 2662401
  br i1 %48, label %if.end114.if.end126_crit_edge, label %do.end123

if.end114.if.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

do.end123:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20) #16
  br label %cleanup

if.end126:                                        ; preds = %if.end114.if.end126_crit_edge, %if.end91.if.end126_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %call128 = tail call fastcc i32 @ad7192_setup(ptr noundef %3, ptr noundef %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end126.cleanup_crit_edge

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end131:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  %call133 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %if.end126.cleanup_crit_edge, %do.end123, %devm_add_action_or_reset.exit221, %if.then102.cleanup_crit_edge, %if.then88, %if.end62.cleanup_crit_edge, %do.end60, %devm_add_action_or_reset.exit216, %do.end46, %if.then36, %devm_add_action_or_reset.exit, %do.end23, %if.then13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %if.then13 ], [ %call18, %do.end23 ], [ %9, %if.then36 ], [ %call41, %do.end46 ], [ %call56, %do.end60 ], [ %38, %if.then88 ], [ %call133, %if.end131 ], [ -22, %do.end123 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i213, %devm_add_action_or_reset.exit216 ], [ %call80, %if.end62.cleanup_crit_edge ], [ %call104, %if.then102.cleanup_crit_edge ], [ %call.i218, %devm_add_action_or_reset.exit221 ], [ %call128, %if.end126.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7192_reg_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_ad_sd_setup_buffer_and_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7192_of_clock_select(ptr nocapture noundef readonly %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.ad7192_state, ptr %st, i32 0, i32 15
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 128
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %mclk = getelementptr inbounds %struct.ad7192_state, ptr %st, i32 0, i32 3
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef null) #13
  %tobool.i.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool.i.not, i32 2, i32 3
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i9 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.34, ptr noundef null) #13
  %tobool.i10.not = icmp eq ptr %call.i9, null
  %. = zext i1 %tobool.i10.not to i32
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then
  %clock_sel.0 = phi i32 [ %spec.select, %if.then ], [ %., %if.else ]
  ret i32 %clock_sel.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %clk) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7192_clk_disable(ptr noundef %clk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %clk) #13
  tail call void @clk_unprepare(ptr noundef %clk) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7192_setup(ptr noundef %st, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.ad7192_state, ptr %st, i32 0, i32 15
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 128
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #13
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %id, align 4, !annotation !141
  %call2 = tail call i32 @ad_sd_reset(ptr noundef %sd, i32 noundef 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #13
  %call4 = call i32 @ad_sd_read_reg(ptr noundef %sd, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %id) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %and = and i32 %6, 15
  store i32 %and, ptr %id, align 4
  %7 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %st, align 128
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %10)
  %cmp7.not = icmp eq i32 %and, %10
  br i1 %cmp7.not, label %if.end6.if.end11_crit_edge, label %do.end

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.35, i32 noundef %and) #16
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end6.if.end11_crit_edge
  %clock_sel = getelementptr inbounds %struct.ad7192_state, ptr %st, i32 0, i32 11
  %13 = ptrtoint ptr %clock_sel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %clock_sel, align 1
  %15 = and i8 %14, 3
  %and12 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %and12, 18
  %or13 = or i32 %shl, 4194784
  %mode = getelementptr inbounds %struct.ad7192_state, ptr %st, i32 0, i32 7
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or13, ptr %mode, align 4
  %conf = getelementptr inbounds %struct.ad7192_state, ptr %st, i32 0, i32 8
  %17 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %conf, align 32
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.38, ptr noundef null) #13
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end11.if.end19_crit_edge, label %if.then16

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  %or18 = or i32 %19, 1024
  store i32 %or18, ptr %mode, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.if.end19_crit_edge
  %call.i429 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.39, ptr noundef null) #13
  %tobool.i430.not = icmp eq ptr %call.i429, null
  br i1 %tobool.i430.not, label %if.end19.if.end31_crit_edge, label %land.lhs.true

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end19
  %20 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st, align 128
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp26.not = icmp eq i32 %23, 6
  br i1 %cmp26.not, label %land.lhs.true.if.end31_crit_edge, label %if.then28

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %conf, align 32
  %or30 = or i32 %25, 1048576
  store i32 %or30, ptr %conf, align 32
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %26 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %conf, align 32
  %and33 = and i32 %27, -8388609
  store i32 %and33, ptr %conf, align 32
  %f_order = getelementptr inbounds %struct.ad7192_state, ptr %st, i32 0, i32 6
  %28 = ptrtoint ptr %f_order to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %f_order, align 8
  %call.i431 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.40, ptr noundef null) #13
  %tobool.i432.not = icmp eq ptr %call.i431, null
  br i1 %tobool.i432.not, label %if.end31.if.end40_crit_edge, label %if.then37

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %conf, align 32
  %or39 = or i32 %30, 16
  store i32 %or39, ptr %conf, align 32
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end31.if.end40_crit_edge
  %call.i433 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.41, ptr noundef null) #13
  %tobool.i434.not = icmp eq ptr %call.i433, null
  br i1 %tobool.i434.not, label %if.then44, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %conf, align 32
  %or46 = or i32 %32, 8
  store i32 %or46, ptr %conf, align 32
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %call.i435 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.42, ptr noundef null) #13
  %tobool.i436.not = icmp eq ptr %call.i435, null
  %brmerge = select i1 %tobool.i436.not, i1 true, i1 %tobool.i432.not
  br i1 %brmerge, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %conf, align 32
  %or57 = or i32 %34, 128
  store i32 %or57, ptr %conf, align 32
  br label %if.end67

if.else:                                          ; preds = %if.end47
  br i1 %tobool.i436.not, label %if.else.if.end67_crit_edge, label %do.end62

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

do.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.44) #16
  br label %if.end67

if.end67:                                         ; preds = %do.end62, %if.else.if.end67_crit_edge, %if.then55
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode, align 4
  %call70 = call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 1, i32 noundef 3, i32 noundef %38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  %39 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %conf, align 32
  %call76 = call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 2, i32 noundef 3, i32 noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end79:                                         ; preds = %if.end73
  %call.i437 = call i32 @ad_sd_calibrate_all(ptr noundef %sd, ptr noundef nonnull @ad7192_calib_arr, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i437)
  %tobool81.not = icmp eq i32 %call.i437, 0
  br i1 %tobool81.not, label %for.cond.preheader, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end79
  %int_vref_mv = getelementptr inbounds %struct.ad7192_state, ptr %st, i32 0, i32 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0438 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %41 = ptrtoint ptr %int_vref_mv to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %int_vref_mv, align 16
  %conv86 = zext i16 %42 to i64
  %mul = mul nuw nsw i64 %conv86, 100000000
  %43 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %channels, align 8
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %44, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %realbits, align 1
  %conv87 = zext i8 %46 to i32
  %47 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %conf, align 32
  %and89 = lshr i32 %48, 3
  %49 = or i32 %and89, -2
  %.neg = add nuw nsw i32 %conv87, 1
  %sub = add nsw i32 %.neg, %49
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %mul, %sh_prom
  %sh_prom91 = zext i32 %i.0438 to i64
  %shr92 = lshr i64 %shr, %sh_prom91
  %conv118 = trunc i64 %shr92 to i32
  %50 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %shr92) #17, !srcloc !142
  %51 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %shr92, i64 %50, i32 0) #17, !srcloc !143
  %asmresult10.i = extractvalue { i64, i32 } %51, 0
  %div267428 = lshr i64 %asmresult10.i, 26
  %conv268 = trunc i64 %div267428 to i32
  %mul269.neg = mul i32 %conv268, -100000000
  %sub270 = add i32 %mul269.neg, %conv118
  %mul289 = mul i32 %sub270, 10
  %arrayidx290 = getelementptr %struct.ad7192_state, ptr %st, i32 0, i32 9, i32 %i.0438
  %arrayidx291 = getelementptr %struct.ad7192_state, ptr %st, i32 0, i32 9, i32 %i.0438, i32 1
  %52 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul289, ptr %arrayidx291, align 4
  %53 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv268, ptr %arrayidx290, align 4
  %inc = add nuw nsw i32 %i.0438, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call70, %if.end67.cleanup_crit_edge ], [ %call76, %if.end73.cleanup_crit_edge ], [ %call.i437, %if.end79.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_write_syscalib(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %sys_calib = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sys_calib) #13
  %2 = ptrtoint ptr %sys_calib to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sys_calib, align 1, !annotation !141
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %sys_calib) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %sys_calib to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sys_calib, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.end11.thread_crit_edge, label %if.then3

if.end.if.end11.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.thread

if.then3:                                         ; preds = %if.end
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 13, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  %sd = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 15
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address, align 4
  %. = select i1 %cmp, i32 6, i32 7
  %call6 = call i32 @ad_sd_calibrate(ptr noundef %sd, i32 noundef %., i32 noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool12.not = icmp eq i32 %call6, 0
  br i1 %tobool12.not, label %if.then3.if.end11.thread_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.if.end11.thread_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.then3.if.end11.thread_crit_edge, %if.end.if.end11.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11.thread, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %len, %if.end11.thread ], [ %call6, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sys_calib) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_calibrate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7192_set_syscalib_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %conv = trunc i32 %mode to i8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 13, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7192_get_syscalib_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 13, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %conf = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 32
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb17
    i32 12, label %sw.bb27
    i32 10, label %sw.bb32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @ad_sigma_delta_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val) #13
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %6, label %sw.bb3.cleanup_crit_edge [
    i32 0, label %sw.bb4
    i32 9, label %sw.bb14
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conf, align 32
  %and6 = and i32 %9, 7
  %arrayidx = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 %and6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  %13 = load i32, ptr %conf, align 32
  %and10 = and i32 %13, 7
  %arrayidx12 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 %and10, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val2, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val, align 4
  %div = select i1 %tobool.not, i32 355239, i32 177619
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %val2, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then, label %sw.bb17.if.end_crit_edge

sw.bb17.if.end_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %realbits, align 1
  %conv = zext i8 %20 to i32
  %sub = add nsw i32 %conv, -1
  %shl.neg = shl nsw i32 -1, %sub
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb17.if.end_crit_edge
  %storemerge = phi i32 [ %shl.neg, %if.then ], [ 0, %sw.bb17.if.end_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %val, align 4
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %23)
  %cmp = icmp eq i32 %23, 9
  br i1 %cmp, label %if.then22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul.neg = select i1 %tobool.not, i32 -768495, i32 -1536990
  %sub25 = add i32 %storemerge, %mul.neg
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub25, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fclk = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fclk, align 4
  %f_order = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %f_order to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_order, align 8
  %mul28 = shl i32 %28, 10
  %mode = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode, align 4
  %and29 = and i32 %30, 1023
  %mul30 = mul i32 %mul28, %and29
  %div31 = udiv i32 %26, %mul30
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div31, ptr %val, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fclk.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fclk.i, align 4
  %f_order.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %f_order.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_order.i, align 8
  %mode.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode.i, align 4
  %and.i = and i32 %37, 1023
  %mul.i = mul i32 %and.i, %35
  %div38.i = lshr i32 %mul.i, 1
  %add.i = add i32 %div38.i, %33
  %div1.i = udiv i32 %add.i, %mul.i
  %and2.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %and11.i = and i32 %37, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %..i = select i1 %tobool12.not.i, i32 230, i32 272
  %.sink.i = select i1 %tobool.not.i, i32 %..i, i32 240
  %mul22.i = mul i32 %.sink.i, %div1.i
  %retval.0.in.i = add i32 %mul22.i, 512
  %retval.0.i = lshr i32 %retval.0.in.i, 10
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i, ptr %val, align 4
  %39 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb32, %sw.bb27, %if.then22, %if.end.cleanup_crit_edge, %sw.bb14, %sw.bb4, %sw.bb3.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %sw.bb32 ], [ 1, %sw.bb27 ], [ 3, %sw.bb14 ], [ 3, %sw.bb4 ], [ %call2, %sw.bb ], [ -22, %sw.bb3.cleanup_crit_edge ], [ 1, %if.then22 ], [ 1, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7192_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scale_avail = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 9
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
define internal i32 @ad7192_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %mask, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb17
    i32 10, label %sw.bb34
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %lock = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %arrayidx2 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val2)
  %cmp3 = icmp eq i32 %4, %val2
  br i1 %cmp3, label %sw.bb.if.then4_crit_edge, label %for.inc

sw.bb.if.then4_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %for.inc.6.if.then4_crit_edge, %for.inc.5.if.then4_crit_edge, %for.inc.4.if.then4_crit_edge, %for.inc.3.if.then4_crit_edge, %for.inc.2.if.then4_crit_edge, %for.inc.1.if.then4_crit_edge, %for.inc.if.then4_crit_edge, %sw.bb.if.then4_crit_edge
  %i.072.lcssa = phi i32 [ 0, %sw.bb.if.then4_crit_edge ], [ 1, %for.inc.if.then4_crit_edge ], [ 2, %for.inc.1.if.then4_crit_edge ], [ 3, %for.inc.2.if.then4_crit_edge ], [ 4, %for.inc.3.if.then4_crit_edge ], [ 5, %for.inc.4.if.then4_crit_edge ], [ 6, %for.inc.5.if.then4_crit_edge ], [ 7, %for.inc.6.if.then4_crit_edge ]
  %conf = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %conf, align 32
  %and = and i32 %6, -8
  %or = or i32 %and, %i.072.lcssa
  store i32 %or, ptr %conf, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %or)
  %cmp9 = icmp eq i32 %6, %or
  br i1 %cmp9, label %if.then4.for.end_crit_edge, label %if.end11

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %sd = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 15
  %call13 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 2, i32 noundef 3, i32 noundef %or) #13
  %call.i = tail call i32 @ad_sd_calibrate_all(ptr noundef %sd, ptr noundef nonnull @ad7192_calib_arr, i32 noundef 8) #13
  br label %for.end

for.inc:                                          ; preds = %sw.bb
  %arrayidx2.1 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val2)
  %cmp3.1 = icmp eq i32 %8, %val2
  br i1 %cmp3.1, label %for.inc.if.then4_crit_edge, label %for.inc.1

for.inc.if.then4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.1:                                        ; preds = %for.inc
  %arrayidx2.2 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val2)
  %cmp3.2 = icmp eq i32 %10, %val2
  br i1 %cmp3.2, label %for.inc.1.if.then4_crit_edge, label %for.inc.2

for.inc.1.if.then4_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx2.3 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val2)
  %cmp3.3 = icmp eq i32 %12, %val2
  br i1 %cmp3.3, label %for.inc.2.if.then4_crit_edge, label %for.inc.3

for.inc.2.if.then4_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx2.4 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val2)
  %cmp3.4 = icmp eq i32 %14, %val2
  br i1 %cmp3.4, label %for.inc.3.if.then4_crit_edge, label %for.inc.4

for.inc.3.if.then4_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx2.5 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val2)
  %cmp3.5 = icmp eq i32 %16, %val2
  br i1 %cmp3.5, label %for.inc.4.if.then4_crit_edge, label %for.inc.5

for.inc.4.if.then4_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx2.6 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val2)
  %cmp3.6 = icmp eq i32 %18, %val2
  br i1 %cmp3.6, label %for.inc.5.if.then4_crit_edge, label %for.inc.6

for.inc.5.if.then4_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx2.7 = getelementptr %struct.ad7192_state, ptr %1, i32 0, i32 9, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val2)
  %cmp3.7 = icmp eq i32 %20, %val2
  br i1 %cmp3.7, label %for.inc.6.if.then4_crit_edge, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.6.if.then4_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %if.end11, %if.then4.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then4.for.end_crit_edge ], [ 0, %if.end11 ], [ -22, %for.inc.6.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool18.not = icmp eq i32 %val, 0
  br i1 %tobool18.not, label %sw.bb17.sw.epilog_crit_edge, label %if.end20

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end20:                                         ; preds = %sw.bb17
  %fclk = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fclk, align 4
  %f_order = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %f_order to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f_order, align 8
  %mul = shl i32 %val, 10
  %mul21 = mul i32 %mul, %24
  %div22 = udiv i32 %22, %mul21
  %25 = add i32 %div22, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1023, i32 %25)
  %26 = icmp ult i32 %25, -1023
  br i1 %26, label %if.end20.sw.epilog_crit_edge, label %if.end26

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %mode = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  %and27 = and i32 %28, -1024
  %or30 = or i32 %and27, %div22
  store i32 %or30, ptr %mode, align 4
  %sd31 = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 15
  %call33 = tail call i32 @ad_sd_write_reg(ptr noundef %sd31, i32 noundef 1, i32 noundef 3, i32 noundef %or30) #13
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end
  %div35 = sdiv i32 %val2, 1000
  %mul.i = mul i32 %val, 1000
  %add.i = add i32 %div35, %mul.i
  %fclk.i.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %fclk.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fclk.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode.i.i, align 4
  %and.i.i = shl i32 %32, 2
  %mul.i.i = and i32 %and.i.i, 4092
  %div70.i.i = lshr exact i32 %mul.i.i, 1
  %add.i.i = add i32 %div70.i.i, %30
  %div1.i.i = udiv i32 %add.i.i, %mul.i.i
  %mul3.i.i = mul i32 %div1.i.i, 240
  %add7.i.i = add i32 %mul3.i.i, 512
  %div871.i.i = lshr i32 %add7.i.i, 10
  %and13.i.i = and i32 %32, 1023
  %mul14.i.i = mul nuw nsw i32 %and13.i.i, 3
  %div1672.i.i = lshr i32 %mul14.i.i, 1
  %add17.i.i = add i32 %div1672.i.i, %30
  %div18.i.i = udiv i32 %add17.i.i, %mul14.i.i
  %mul20.i.i = mul i32 %div18.i.i, 240
  %add24.i.i = add i32 %mul20.i.i, 512
  %div2573.i.i = lshr i32 %add24.i.i, 10
  %div3374.i.i = lshr i32 %and13.i.i, 1
  %add34.i.i = add i32 %div3374.i.i, %30
  %div35.i.i = udiv i32 %add34.i.i, %and13.i.i
  %mul37.i.i = mul i32 %div35.i.i, 230
  %add41.i.i = add i32 %mul37.i.i, 512
  %div4275.i.i = lshr i32 %add41.i.i, 10
  %mul45.i.i = mul i32 %div35.i.i, 272
  %add49.i.i = add i32 %mul45.i.i, 512
  %div5076.i.i = lshr i32 %add49.i.i, 10
  %sub.i = sub i32 %add.i, %div871.i.i
  %33 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #13
  %sub.1.i = sub i32 %add.i, %div2573.i.i
  %34 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %33)
  %cmp3.1.i = icmp ult i32 %34, %33
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %33) #13
  %idx.1.1.i = zext i1 %cmp3.1.i to i32
  %sub.2.i = sub i32 %add.i, %div4275.i.i
  %36 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %35)
  %cmp3.2.i = icmp ult i32 %36, %35
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %35) #13
  %idx.1.2.i = select i1 %cmp3.2.i, i32 2, i32 %idx.1.1.i
  %sub.3.i = sub i32 %add.i, %div5076.i.i
  %38 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %37)
  %cmp3.3.i = icmp ult i32 %38, %37
  %idx.1.3.i = select i1 %cmp3.3.i, i32 3, i32 %idx.1.2.i
  %39 = zext i32 %idx.1.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %idx.1.3.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #15
  %f_order.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %f_order.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %f_order.i, align 8
  %and.i = and i32 %32, -32769
  %41 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i, ptr %mode.i.i, align 4
  %conf.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %conf.i, align 32
  %or.i = or i32 %43, 8388608
  store i32 %or.i, ptr %conf.i, align 32
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #15
  %f_order5.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %f_order5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %f_order5.i, align 8
  %or7.i = or i32 %32, 32768
  %45 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or7.i, ptr %mode.i.i, align 4
  %conf8.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %conf8.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %conf8.i, align 32
  %or9.i = or i32 %47, 8388608
  store i32 %or9.i, ptr %conf8.i, align 32
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #15
  %f_order11.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %f_order11.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %f_order11.i, align 8
  %and13.i = and i32 %32, -32769
  %49 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and13.i, ptr %mode.i.i, align 4
  %conf14.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %conf14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %conf14.i, align 32
  %and15.i = and i32 %51, -8388609
  store i32 %and15.i, ptr %conf14.i, align 32
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #15
  %f_order17.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %f_order17.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %f_order17.i, align 8
  %or19.i = or i32 %32, 32768
  %53 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or19.i, ptr %mode.i.i, align 4
  %conf20.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %conf20.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %conf20.i, align 32
  %and21.i = and i32 %55, -8388609
  store i32 %and21.i, ptr %conf20.i, align 32
  br label %sw.epilog.i

entry.unreachabledefault.i:                       ; preds = %sw.bb34
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb16.i, %sw.bb10.i, %sw.bb4.i, %sw.bb.i
  %sd.i69 = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 15
  %56 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode.i.i, align 4
  %call.i70 = tail call i32 @ad_sd_write_reg(ptr noundef %sd.i69, i32 noundef 1, i32 noundef 3, i32 noundef %57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp23.i = icmp slt i32 %call.i70, 0
  br i1 %cmp23.i, label %sw.epilog.i.sw.epilog_crit_edge, label %if.end25.i

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end25.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %conf27.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %conf27.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %conf27.i, align 32
  %call28.i = tail call i32 @ad_sd_write_reg(ptr noundef %sd.i69, i32 noundef 2, i32 noundef 3, i32 noundef %59) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25.i, %sw.epilog.i.sw.epilog_crit_edge, %if.end26, %if.end20.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %for.end, %if.end.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %if.end26 ], [ %ret.0, %for.end ], [ -22, %sw.bb17.sw.epilog_crit_edge ], [ -22, %if.end20.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ %call28.i, %if.end25.i ], [ %call.i70, %sw.epilog.i.sw.epilog_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7192_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %mask, label %sw.default [
    i32 2, label %entry.return_crit_edge
    i32 12, label %sw.bb1
    i32 10, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 3, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_validate_trigger(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_show_filter_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %fclk.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fclk.i, align 4
  %mode.i = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  %and.i = shl i32 %5, 2
  %mul.i = and i32 %and.i, 4092
  %div70.i = lshr exact i32 %mul.i, 1
  %add.i = add i32 %div70.i, %3
  %div1.i = udiv i32 %add.i, %mul.i
  %mul3.i = mul i32 %div1.i, 240
  %add7.i = add i32 %mul3.i, 512
  %div871.i = lshr i32 %add7.i, 10
  %and13.i = and i32 %5, 1023
  %mul14.i = mul nuw nsw i32 %and13.i, 3
  %div1672.i = lshr i32 %mul14.i, 1
  %add17.i = add i32 %div1672.i, %3
  %div18.i = udiv i32 %add17.i, %mul14.i
  %mul20.i = mul i32 %div18.i, 240
  %add24.i = add i32 %mul20.i, 512
  %div2573.i = lshr i32 %add24.i, 10
  %div3374.i = lshr i32 %and13.i, 1
  %add34.i = add i32 %div3374.i, %3
  %div35.i = udiv i32 %add34.i, %and13.i
  %mul37.i = mul i32 %div35.i, 230
  %add41.i = add i32 %mul37.i, 512
  %div4275.i = lshr i32 %add41.i, 10
  %mul45.i = mul i32 %div35.i, 272
  %add49.i = add i32 %mul45.i, 512
  %div5076.i = lshr i32 %add49.i, 10
  %div = udiv i32 %add7.i, 1024000
  %rem = urem i32 %div871.i, 1000
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %div, i32 noundef %rem) #13
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call3
  %sub.1 = sub i32 4096, %call3
  %div.1 = udiv i32 %add24.i, 1024000
  %rem.1 = urem i32 %div2573.i, 1000
  %call3.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.29, i32 noundef %div.1, i32 noundef %rem.1) #13
  %add.1 = add i32 %call3.1, %call3
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %div.2 = udiv i32 %add41.i, 1024000
  %rem.2 = urem i32 %div4275.i, 1000
  %call3.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.29, i32 noundef %div.2, i32 noundef %rem.2) #13
  %add.2 = add i32 %call3.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %div.3 = udiv i32 %add49.i, 1024000
  %rem.3 = urem i32 %div5076.i, 1000
  %call3.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.29, i32 noundef %div.3, i32 noundef %rem.3) #13
  %add.3 = add i32 %call3.3, %add.2
  %sub4 = add i32 %add.3, -1
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %sub4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %arrayidx5, align 1
  ret i32 %add.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_show_bridge_switch(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %gpocon = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %gpocon to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpocon, align 4
  %4 = lshr i8 %3, 6
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_set(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #13
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !141
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @iio_device_claim_direct_mode(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %address, align 8
  %conv = trunc i64 %4 to i32
  %5 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %conv, label %if.end5.cleanup.sink.split_crit_edge [
    i32 5, label %sw.bb
    i32 1, label %sw.bb17
  ]

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %gpocon10 = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %gpocon10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gpocon10, align 4
  %10 = and i8 %9, -65
  %masksel49 = select i1 %tobool6.not, i8 0, i8 64
  %.sink = or i8 %10, %masksel49
  store i8 %.sink, ptr %gpocon10, align 4
  %sd = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 15
  %conv15 = zext i8 %.sink to i32
  %call16 = call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 5, i32 noundef 1, i32 noundef %conv15) #13
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  %mode22 = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %mode22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode22, align 4
  %and23 = and i32 %14, -16385
  %masksel = select i1 %tobool18.not, i32 0, i32 16384
  %and23.sink = or i32 %and23, %masksel
  store i32 %and23.sink, ptr %mode22, align 4
  %sd25 = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 15
  %call27 = call i32 @ad_sd_write_reg(ptr noundef %sd25, i32 noundef 1, i32 noundef 3, i32 noundef %and23.sink) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb17, %sw.bb, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end5.cleanup.sink.split_crit_edge ], [ %len, %sw.bb17 ], [ %len, %sw.bb ]
  call void @iio_device_release_direct_mode(ptr noundef %add.ptr.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sigma_delta_single_conversion(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_calibrate_all(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_show_ac_excitation(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mode = getelementptr inbounds %struct.ad7192_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %and = lshr i32 %3, 14
  %and.lobit = and i32 %and, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %and.lobit)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_set_channel(ptr noundef %sd, i32 noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr i8, ptr %sd, i32 -224
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 32
  %and = and i32 %1, -524033
  %shl = shl i32 %channel, 8
  %or = or i32 %and, %shl
  store i32 %or, ptr %conf, align 32
  %call4 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 2, i32 noundef 3, i32 noundef %or) #13
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7192_set_mode(ptr noundef %sd, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr i8, ptr %sd, i32 -228
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 4
  %and = and i32 %1, -14680065
  %and2 = shl i32 %mode, 21
  %shl = and i32 %and2, 14680064
  %or = or i32 %and, %shl
  store i32 %or, ptr %mode1, align 4
  %call6 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 1, i32 noundef 3, i32 noundef %or) #13
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_read_reg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !83, !85, !87, !89, !91, !93, !95, !96, !98, !100, !102, !104, !105, !106, !107, !108, !110, !112, !114, !116, !118, !120, !121, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__initcall__kmod_ad7192__290_1046_ad7192_driver_init6, !1, !"__initcall__kmod_ad7192__290_1046_ad7192_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7192.c", i32 1046, i32 1}
!2 = !{ptr @__exitcall_ad7192_driver_exit, !1, !"__exitcall_ad7192_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7192.c", i32 1048, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7192.c", i32 1049, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7192.c", i32 1050, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7192.c", i32 1041, i32 11}
!12 = !{ptr @ad7192_driver, !13, !"ad7192_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7192.c", i32 1039, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7192.c", i32 930, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ad7192_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ad7192_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ad7192_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ad7192.c", i32 940, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/ad7192.c", i32 942, i32 43}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/ad7192.c", i32 948, i32 3}
!29 = !{ptr @ad7192_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ad7192_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/ad7192.c", i32 956, i32 43}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/ad7192.c", i32 962, i32 3}
!35 = !{ptr @ad7192_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ad7192_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/ad7192.c", i32 972, i32 3}
!39 = !{ptr @ad7192_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ad7192_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/ad7192.c", i32 998, i32 46}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/ad7192.c", i32 1017, i32 4}
!45 = !{ptr @ad7192_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ad7192_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/ad7192.c", i32 864, i32 2}
!49 = !{ptr @ad7193_channels, !50, !"ad7193_channels", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/ad7192.c", i32 858, i32 35}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/ad7192.c", i32 254, i32 11}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/ad7192.c", i32 258, i32 2}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/ad7192.c", i32 260, i32 2}
!57 = !{ptr @ad7192_calibsys_ext_info, !58, !"ad7192_calibsys_ext_info", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/ad7192.c", i32 252, i32 44}
!59 = !{ptr @ad7192_syscalib_mode_enum, !60, !"ad7192_syscalib_mode_enum", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/ad7192.c", i32 245, i32 30}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/ad7192.c", i32 196, i32 33}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/ad7192.c", i32 197, i32 33}
!65 = !{ptr @ad7192_syscalib_modes, !66, !"ad7192_syscalib_modes", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/ad7192.c", i32 195, i32 27}
!67 = !{ptr @ad7192_channels, !68, !"ad7192_channels", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/ad7192.c", i32 846, i32 35}
!69 = !{ptr @ad7195_info, !70, !"ad7195_info", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/ad7192.c", i32 795, i32 30}
!71 = !{ptr @ad7195_attribute_group, !72, !"ad7195_attribute_group", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/ad7192.c", i32 562, i32 37}
!73 = !{ptr @ad7195_attributes, !74, !"ad7195_attributes", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/ad7192.c", i32 556, i32 26}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/ad7192.c", i32 534, i32 8}
!77 = !{ptr @iio_dev_attr_filter_low_pass_3db_frequency_available, !76, !"iio_dev_attr_filter_low_pass_3db_frequency_available", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/ad7192.c", i32 526, i32 6}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/ad7192.c", i32 537, i32 8}
!82 = !{ptr @iio_dev_attr_bridge_switch_en, !81, !"iio_dev_attr_bridge_switch_en", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/ad7192.c", i32 446, i32 22}
!85 = !{ptr @ad7192_calib_arr, !86, !"ad7192_calib_arr", i1 false, i1 false}
!86 = !{!"../drivers/iio/adc/ad7192.c", i32 300, i32 38}
!87 = !{ptr @ad7192_info, !88, !"ad7192_info", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/ad7192.c", i32 786, i32 30}
!89 = !{ptr @ad7192_attribute_group, !90, !"ad7192_attribute_group", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/ad7192.c", i32 552, i32 37}
!91 = !{ptr @ad7192_attributes, !92, !"ad7192_attributes", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/ad7192.c", i32 545, i32 26}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/ad7192.c", i32 541, i32 8}
!95 = !{ptr @iio_dev_attr_ac_excitation_en, !94, !"iio_dev_attr_ac_excitation_en", i1 false, i1 false}
!96 = !{ptr @ad7192_sigma_delta_info, !97, !"ad7192_sigma_delta_info", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/ad7192.c", i32 291, i32 41}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/ad7192.c", i32 332, i32 33}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/ad7192.c", i32 335, i32 33}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/ad7192.c", i32 366, i32 3}
!104 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ad7192_setup._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @ad7192_setup._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/ad7192.c", i32 375, i32 39}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/adc/ad7192.c", i32 379, i32 40}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/adc/ad7192.c", i32 386, i32 37}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/adc/ad7192.c", i32 390, i32 38}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/adc/ad7192.c", i32 395, i32 7}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/adc/ad7192.c", i32 399, i32 3}
!120 = !{ptr @ad7192_setup._entry.43, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ad7192_setup._entry_ptr.45, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @ad7192_of_match, !123, !"ad7192_of_match", i1 false, i1 false}
!123 = !{!"../drivers/iio/adc/ad7192.c", i32 1030, i32 34}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/adc/ad7192.c", i32 879, i32 11}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/adc/ad7192.c", i32 887, i32 11}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/ad7192.c", i32 891, i32 11}
!130 = !{ptr @ad7192_chip_info_tbl, !131, !"ad7192_chip_info_tbl", i1 false, i1 false}
!131 = !{!"../drivers/iio/adc/ad7192.c", i32 876, i32 38}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"auto-init"}
!142 = !{i64 1167856, i64 1167883}
!143 = !{i64 1168551, i64 1168578, i64 1168611, i64 1168632, i64 1168659, i64 1168685}
!144 = !{i8 0, i8 2}
