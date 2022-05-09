; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7266.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7266.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ad7266_chan_info = type { ptr, i32, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad7266_state = type { ptr, ptr, i32, [3 x %struct.spi_transfer], %struct.spi_message, i32, i32, i8, [3 x ptr], %struct.anon.85, [112 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.anon.85 = type { [2 x i16], i64 }
%struct.ad7266_platform_data = type { i32, i32, i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_ad7266__290_510_ad7266_driver_init6 = internal global ptr @ad7266_driver_init, section ".initcall6.init", align 4
@ad7266_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7266_id, ptr @ad7266_probe, ptr @ad7266_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7266_driver_exit = internal global ptr @ad7266_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"ad7266.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [48 x i8] c"ad7266.description=Analog Devices AD7266/65 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad7266.file=drivers/iio/adc/ad7266\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad7266.license=GPL v2\00", section ".modinfo", align 1
@ad7266_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7265\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad7266\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7266\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad7266_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7266_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7266_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@iio_triggered_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @ad7266_preenable, ptr null, ptr null, ptr @ad7266_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ad0\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ad1\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ad2\00", [28 x i8] zeroinitializer }, align 32
@ad7266_chan_infos = internal constant { [8 x %struct.ad7266_chan_info], [32 x i8] } { [8 x %struct.ad7266_chan_info] [%struct.ad7266_chan_info { ptr @ad7266_channels_u, i32 13, ptr @ad7266_available_scan_masks }, %struct.ad7266_chan_info { ptr @ad7266_channels_u_fixed, i32 3, ptr @ad7266_available_scan_masks_fixed }, %struct.ad7266_chan_info { ptr @ad7266_channels_s, i32 13, ptr @ad7266_available_scan_masks }, %struct.ad7266_chan_info { ptr @ad7266_channels_s_fixed, i32 3, ptr @ad7266_available_scan_masks_fixed }, %struct.ad7266_chan_info { ptr @ad7266_channels_diff_u, i32 7, ptr @ad7266_available_scan_masks_diff }, %struct.ad7266_chan_info { ptr @ad7266_channels_diff_fixed_u, i32 3, ptr @ad7266_available_scan_masks_fixed }, %struct.ad7266_chan_info { ptr @ad7266_channels_diff_s, i32 7, ptr @ad7266_available_scan_masks_diff }, %struct.ad7266_chan_info { ptr @ad7266_channels_diff_fixed_s, i32 3, ptr @ad7266_available_scan_masks_fixed }], [32 x i8] zeroinitializer }, align 32
@ad7266_channels_u = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 13, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [264 x i8] zeroinitializer }, align 32
@ad7266_available_scan_masks = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 12, i32 48, i32 192, i32 768, i32 3072, i32 0], [36 x i8] zeroinitializer }, align 32
@ad7266_channels_u_fixed = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@ad7266_available_scan_masks_fixed = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 0], [24 x i8] zeroinitializer }, align 32
@ad7266_channels_s = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 13, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [264 x i8] zeroinitializer }, align 32
@ad7266_channels_s_fixed = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@ad7266_channels_diff_u = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 2, i32 2, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 3, i32 3, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 4, i32 4, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 5, i32 5, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [152 x i8] zeroinitializer }, align 32
@ad7266_available_scan_masks_diff = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 12, i32 48, i32 0], [16 x i8] zeroinitializer }, align 32
@ad7266_channels_diff_fixed_u = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@ad7266_channels_diff_s = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 1, i32 1, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 2, i32 2, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 3, i32 3, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 4, i32 4, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 5, i32 5, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [152 x i8] zeroinitializer }, align 32
@ad7266_channels_diff_fixed_s = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 1, i32 1, %struct.anon.84 { i8 115, i8 12, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"ad7266_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 502, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"ad7266_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 495, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 504, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 395, i32 51 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"ad7266_info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 278, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"iio_triggered_buffer_setup_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 75, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 378, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 378, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 378, i32 16 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"ad7266_chan_infos\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 314, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"ad7266_channels_u\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 229, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"ad7266_available_scan_masks\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 283, i32 28 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"ad7266_channels_u_fixed\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 231, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [34 x i8] c"ad7266_available_scan_masks_fixed\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 300, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"ad7266_channels_s\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 230, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"ad7266_channels_s_fixed\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 232, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"ad7266_channels_diff_u\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 266, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [33 x i8] c"ad7266_available_scan_masks_diff\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 293, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant [29 x i8] c"ad7266_channels_diff_fixed_u\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 276, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"ad7266_channels_diff_s\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 265, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [29 x i8] c"ad7266_channels_diff_fixed_s\00", align 1
@___asan_gen_.68 = private constant [28 x i8] c"../drivers/iio/adc/ad7266.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 275, i32 8 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad7266_driver_exit, ptr @__initcall__kmod_ad7266__290_510_ad7266_driver_init6, ptr @ad7266_driver_exit, ptr @ad7266_driver, ptr @ad7266_id, ptr @.str, ptr @.str.1, ptr @ad7266_info, ptr @iio_triggered_buffer_setup_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ad7266_chan_infos, ptr @ad7266_channels_u, ptr @ad7266_available_scan_masks, ptr @ad7266_channels_u_fixed, ptr @ad7266_available_scan_masks_fixed, ptr @ad7266_channels_s, ptr @ad7266_channels_s_fixed, ptr @ad7266_channels_diff_u, ptr @ad7266_available_scan_masks_diff, ptr @ad7266_channels_diff_fixed_u, ptr @ad7266_channels_diff_s, ptr @ad7266_channels_diff_fixed_s], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_triggered_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_chan_infos to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_channels_u to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_available_scan_masks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_channels_u_fixed to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_available_scan_masks_fixed to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_channels_s to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_channels_s_fixed to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_channels_diff_u to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_available_scan_masks_diff to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_channels_diff_fixed_u to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_channels_diff_s to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7266_channels_diff_fixed_s to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7266_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7266_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7266_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7266_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7266_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 512) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call4 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1) #4
  %reg = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %call9 = tail call i32 @regulator_enable(ptr noundef %call4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %call13 = tail call i32 @regulator_get_voltage(ptr noundef %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.error_disable_reg_crit_edge, label %if.end16

if.end11.error_disable_reg_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_disable_reg

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %div193 = udiv i32 %call13, 1000
  br label %if.end25

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call4 to i32
  %cmp19.not = icmp eq ptr %call4, inttoptr (i32 -19 to ptr)
  br i1 %cmp19.not, label %if.else.if.end25_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end25:                                         ; preds = %if.else.if.end25_crit_edge, %if.end16
  %.sink = phi i32 [ %div193, %if.end16 ], [ 2500, %if.else.if.end25_crit_edge ]
  %vref_mv24 = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %vref_mv24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %vref_mv24, align 8
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %if.else48, label %if.then27

if.then27:                                        ; preds = %if.end25
  %fixed_addr = getelementptr inbounds %struct.ad7266_platform_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fixed_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fixed_addr, align 4, !range !63
  %fixed_addr29 = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %fixed_addr29 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %fixed_addr29, align 4
  %mode = getelementptr inbounds %struct.ad7266_platform_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %mode30 = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %mode30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mode30, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %range31 = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %range31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %range31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool33.not = icmp eq i8 %10, 0
  br i1 %tobool33.not, label %for.body.preheader, label %if.then27.if.end52_crit_edge

if.then27.if.end52_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

for.body.preheader:                               ; preds = %if.then27
  %call37 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef 3) #4
  %arrayidx38 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 8, i32 0
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call37, ptr %arrayidx38, align 4
  %cmp.i179 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %for.body.preheader.if.then42_crit_edge, label %for.cond

for.body.preheader.if.then42_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

for.cond:                                         ; preds = %for.body.preheader
  %call37.1 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 3) #4
  %arrayidx38.1 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call37.1, ptr %arrayidx38.1, align 4
  %cmp.i179.1 = icmp ugt ptr %call37.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.1, label %for.cond.if.then42_crit_edge, label %for.cond.1

for.cond.if.then42_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

for.cond.1:                                       ; preds = %for.cond
  %call37.2 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef 3) #4
  %arrayidx38.2 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call37.2, ptr %arrayidx38.2, align 4
  %cmp.i179.2 = icmp ugt ptr %call37.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.2, label %for.cond.1.if.then42_crit_edge, label %for.cond.1.if.end52_crit_edge

for.cond.1.if.end52_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

for.cond.1.if.then42_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.then42:                                        ; preds = %for.cond.1.if.then42_crit_edge, %for.cond.if.then42_crit_edge, %for.body.preheader.if.then42_crit_edge
  %call37.lcssa = phi ptr [ %call37, %for.body.preheader.if.then42_crit_edge ], [ %call37.1, %for.cond.if.then42_crit_edge ], [ %call37.2, %for.cond.1.if.then42_crit_edge ]
  %21 = ptrtoint ptr %call37.lcssa to i32
  br label %error_disable_reg

if.else48:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_addr49 = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %fixed_addr49 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %fixed_addr49, align 4
  %range50 = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %range50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %range50, align 4
  %mode51 = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %mode51 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mode51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else48, %for.cond.1.if.end52_crit_edge, %if.then27.if.end52_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %driver_data.i.i, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spi, ptr %3, align 128
  %call54 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %name55 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %27 = ptrtoint ptr %name55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call54, ptr %name55, align 8
  %28 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ad7266_info, ptr %info, align 8
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 8
  %mode.i = getelementptr inbounds %struct.ad7266_state, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 2
  %range.i = getelementptr inbounds %struct.ad7266_state, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp1.i = icmp eq i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp3.i = icmp eq i32 %33, 0
  %or29.i = or i1 %cmp3.i, %cmp1.i
  %shl.i = select i1 %cmp.not.i, i32 0, i32 4
  %shl10.i = select i1 %or29.i, i32 2, i32 0
  %fixed_addr.i = getelementptr inbounds %struct.ad7266_state, ptr %31, i32 0, i32 7
  %36 = ptrtoint ptr %fixed_addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fixed_addr.i, align 4, !range !63
  %38 = zext i8 %37 to i32
  %or11.i = or i32 %shl.i, %38
  %or15.i = or i32 %or11.i, %shl10.i
  %arrayidx.i = getelementptr [8 x %struct.ad7266_chan_info], ptr @ad7266_chan_infos, i32 0, i32 %or15.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %channels16.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %41 = ptrtoint ptr %channels16.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %channels16.i, align 8
  %num_channels.i = getelementptr [8 x %struct.ad7266_chan_info], ptr @ad7266_chan_infos, i32 0, i32 %or15.i, i32 1
  %42 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_channels.i, align 4
  %num_channels17.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %44 = ptrtoint ptr %num_channels17.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %num_channels17.i, align 4
  %scan_masks.i = getelementptr [8 x %struct.ad7266_chan_info], ptr @ad7266_chan_infos, i32 0, i32 %or15.i, i32 2
  %45 = ptrtoint ptr %scan_masks.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scan_masks.i, align 4
  %available_scan_masks.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %47 = ptrtoint ptr %available_scan_masks.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %available_scan_masks.i, align 4
  %sub.i = add i32 %43, -1
  %masklength.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 7
  %48 = ptrtoint ptr %masklength.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub.i, ptr %masklength.i, align 8
  %data = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 9
  %rx_buf = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 0, i32 1
  %49 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %data, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 0, i32 2
  %50 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 0, i32 7
  %51 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %rx_buf67 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 1, i32 1
  %52 = ptrtoint ptr %rx_buf67 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %data, ptr %rx_buf67, align 4
  %len70 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 1, i32 2
  %53 = ptrtoint ptr %len70 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %len70, align 4
  %cs_change73 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 1, i32 7
  %54 = ptrtoint ptr %cs_change73 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load74 = load i8, ptr %cs_change73, align 4
  %bf.set76 = or i8 %bf.load74, 64
  store i8 %bf.set76, ptr %cs_change73, align 4
  %arrayidx81 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %data, ptr %arrayidx81, align 4
  %len84 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 2, i32 2
  %56 = ptrtoint ptr %len84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %len84, align 4
  %single_msg = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 4
  %57 = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 4, i32 1
  %58 = call ptr @memset(ptr %57, i32 0, i32 40)
  %59 = ptrtoint ptr %single_msg to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %single_msg, ptr %single_msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 4, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %single_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 4, i32 10
  %61 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 4, i32 10, i32 1
  %62 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %single_msg, ptr noundef %single_msg) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end52.spi_message_add_tail.exit_crit_edge

if.end52.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %single_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 0, i32 18, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %single_msg, ptr %prev3.i.i.i, align 4
  %66 = ptrtoint ptr %single_msg to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %transfer_list.i, ptr %single_msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end52.spi_message_add_tail.exit_crit_edge
  %transfer_list.i180 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 1, i32 18
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i182 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i180, ptr noundef %68, ptr noundef %single_msg) #4
  br i1 %call.i.i.i182, label %if.end.i.i.i184, label %spi_message_add_tail.exit.spi_message_add_tail.exit185_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit185_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit185

if.end.i.i.i184:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %transfer_list.i180, ptr %prev.i.i.i, align 4
  %70 = ptrtoint ptr %transfer_list.i180 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %single_msg, ptr %transfer_list.i180, align 4
  %prev3.i.i.i183 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 1, i32 18, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i183 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i183, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %transfer_list.i180, ptr %68, align 4
  br label %spi_message_add_tail.exit185

spi_message_add_tail.exit185:                     ; preds = %if.end.i.i.i184, %spi_message_add_tail.exit.spi_message_add_tail.exit185_crit_edge
  %transfer_list.i186 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 2, i32 18
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i188 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i186, ptr noundef %74, ptr noundef %single_msg) #4
  br i1 %call.i.i.i188, label %if.end.i.i.i190, label %spi_message_add_tail.exit185.spi_message_add_tail.exit191_crit_edge

spi_message_add_tail.exit185.spi_message_add_tail.exit191_crit_edge: ; preds = %spi_message_add_tail.exit185
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit191

if.end.i.i.i190:                                  ; preds = %spi_message_add_tail.exit185
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %transfer_list.i186, ptr %prev.i.i.i, align 4
  %76 = ptrtoint ptr %transfer_list.i186 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %single_msg, ptr %transfer_list.i186, align 4
  %prev3.i.i.i189 = getelementptr %struct.ad7266_state, ptr %3, i32 0, i32 3, i32 2, i32 18, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i189, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %transfer_list.i186, ptr %74, align 4
  br label %spi_message_add_tail.exit191

spi_message_add_tail.exit191:                     ; preds = %if.end.i.i.i190, %spi_message_add_tail.exit185.spi_message_add_tail.exit191_crit_edge
  %call94 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @ad7266_trigger_handler, i32 noundef 0, ptr noundef nonnull @iio_triggered_buffer_setup_ops, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %spi_message_add_tail.exit191.error_disable_reg_crit_edge

spi_message_add_tail.exit191.error_disable_reg_crit_edge: ; preds = %spi_message_add_tail.exit191
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_disable_reg

if.end97:                                         ; preds = %spi_message_add_tail.exit191
  %call98 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %error_buffer_cleanup

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

error_buffer_cleanup:                             ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #4
  br label %error_disable_reg

error_disable_reg:                                ; preds = %error_buffer_cleanup, %spi_message_add_tail.exit191.error_disable_reg_crit_edge, %if.then42, %if.end11.error_disable_reg_crit_edge
  %ret.0 = phi i32 [ %call94, %spi_message_add_tail.exit191.error_disable_reg_crit_edge ], [ %call98, %error_buffer_cleanup ], [ %21, %if.then42 ], [ %call13, %if.end11.error_disable_reg_crit_edge ]
  %79 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg, align 4
  %cmp.i192 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %error_disable_reg.cleanup_crit_edge, label %if.then104

error_disable_reg.cleanup_crit_edge:              ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then104:                                       ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #6
  %call106 = tail call i32 @regulator_disable(ptr noundef %80) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %error_disable_reg.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.then7.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ], [ %ret.0, %if.then104 ], [ %ret.0, %error_disable_reg.cleanup_crit_edge ], [ %7, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7266_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #4
  %reg = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @regulator_disable(ptr noundef %5) #4
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
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7266_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %data = getelementptr inbounds %struct.ad7266_state, ptr %3, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #4
  %6 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #4
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
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_read.exit_crit_edge

entry.spi_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %entry.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp eq i32 %call.i.i, 0
  br i1 %cmp, label %if.then, label %spi_read.exit.if.end_crit_edge

spi_read.exit.if.end_crit_edge:                   ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %spi_read.exit
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scan_timestamp.i, align 8, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %21 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %24, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %22, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data) #4
  br label %if.end

if.end:                                           ; preds = %iio_push_to_buffers_with_timestamp.exit, %spi_read.exit.if.end_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %27) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7266_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %fixed_addr.i.i = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %fixed_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fixed_addr.i.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.ad7266_read_single.exit_crit_edge

if.end.ad7266_read_single.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7266_read_single.exit

if.end.i.i:                                       ; preds = %if.end
  %mode.i.i = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i.i, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %8, label %if.end.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 0, label %sw.bb2.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i.i = lshr i32 %4, 1
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i = or i32 %4, 1
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and.i.i = and i32 %4, -2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %nr.addr.0.i.i = phi i32 [ %4, %if.end.i.i.sw.epilog.i.i_crit_edge ], [ %and.i.i, %sw.bb2.i.i ], [ %or.i.i, %sw.bb1.i.i ], [ %shr.i.i, %sw.bb.i.i ]
  %arrayidx.i.i = getelementptr %struct.ad7266_state, ptr %1, i32 0, i32 8, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %12 = and i32 %nr.addr.0.i.i, 1
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef %12) #4
  %arrayidx.1.i.i = getelementptr %struct.ad7266_state, ptr %1, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1.i.i, align 4
  %15 = lshr i32 %nr.addr.0.i.i, 1
  %16 = and i32 %15, 1
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef %16) #4
  %arrayidx.2.i.i = getelementptr %struct.ad7266_state, ptr %1, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2.i.i, align 4
  %19 = lshr i32 %nr.addr.0.i.i, 2
  %20 = and i32 %19, 1
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef %20) #4
  br label %ad7266_read_single.exit

ad7266_read_single.exit:                          ; preds = %sw.epilog.i.i, %if.end.ad7266_read_single.exit_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %single_msg.i = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @spi_sync(ptr noundef %22, ptr noundef %single_msg.i) #4
  %data.i = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 9
  %rem.i = and i32 %4, 1
  %arrayidx.i = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %rem.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 2
  %conv.i53 = zext i16 %24 to i32
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i53, ptr %val, align 4
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %28 = lshr i32 %27, 2
  %and = and i32 %28, 4095
  store i32 %and, ptr %val, align 4
  %scan_type = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5
  %29 = ptrtoint ptr %scan_type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scan_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %30)
  %cmp = icmp eq i8 %30, 115
  br i1 %cmp, label %if.then4, label %ad7266_read_single.exit.cleanup_crit_edge

ad7266_read_single.exit.cleanup_crit_edge:        ; preds = %ad7266_read_single.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %ad7266_read_single.exit
  call void @__sanitizer_cov_trace_pc() #6
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %realbits, align 1
  %33 = sub i8 32, %32
  %conv1.i = zext i8 %33 to i32
  %shl.i = shl i32 %and, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vref_mv = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vref_mv, align 8
  %mode = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp10 = icmp eq i32 %38, 0
  %mul = zext i1 %cmp10 to i32
  %spec.select = shl i32 %36, %mul
  %range = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp14 = icmp eq i32 %40, 1
  %mul17 = zext i1 %cmp14 to i32
  %scale_mv.1 = shl i32 %spec.select, %mul17
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %scale_mv.1, ptr %val, align 4
  %realbits20 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %realbits20 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %realbits20, align 1
  %conv21 = zext i8 %43 to i32
  %44 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv21, ptr %val2, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %range23 = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %range23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %range23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp24 = icmp eq i32 %46, 1
  br i1 %cmp24, label %land.lhs.true, label %sw.bb22.if.else_crit_edge

sw.bb22.if.else_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb22
  %mode26 = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %mode26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp27.not = icmp eq i32 %48, 0
  br i1 %cmp27.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb22.if.else_crit_edge
  br label %if.end30

if.end30:                                         ; preds = %if.else, %land.lhs.true.if.end30_crit_edge
  %storemerge = phi i32 [ 0, %if.else ], [ 2048, %land.lhs.true.if.end30_crit_edge ]
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %sw.bb9, %if.then4, %ad7266_read_single.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end30 ], [ 11, %sw.bb9 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ 1, %if.then4 ], [ 1, %ad7266_read_single.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7266_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %2 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %masklength, align 8
  %call1 = tail call i32 @_find_first_bit_be(ptr noundef %scan_mask, i32 noundef %3) #4
  %fixed_addr.i = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %fixed_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fixed_addr.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ad7266_select_input.exit_crit_edge

entry.ad7266_select_input.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7266_select_input.exit

if.end.i:                                         ; preds = %entry
  %mode.i = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %7, label %if.end.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 0, label %sw.bb2.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = lshr i32 %call1, 1
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = or i32 %call1, 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = and i32 %call1, -2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %nr.addr.0.i = phi i32 [ %call1, %if.end.i.sw.epilog.i_crit_edge ], [ %and.i, %sw.bb2.i ], [ %or.i, %sw.bb1.i ], [ %shr.i, %sw.bb.i ]
  %arrayidx.i = getelementptr %struct.ad7266_state, ptr %1, i32 0, i32 8, i32 0
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = and i32 %nr.addr.0.i, 1
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef %11) #4
  %arrayidx.1.i = getelementptr %struct.ad7266_state, ptr %1, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1.i, align 4
  %14 = lshr i32 %nr.addr.0.i, 1
  %15 = and i32 %14, 1
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef %15) #4
  %arrayidx.2.i = getelementptr %struct.ad7266_state, ptr %1, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2.i, align 4
  %18 = lshr i32 %nr.addr.0.i, 2
  %19 = and i32 %18, 1
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef %19) #4
  br label %ad7266_select_input.exit

ad7266_select_input.exit:                         ; preds = %sw.epilog.i, %entry.ad7266_select_input.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7266_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %data.i = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %4 = call ptr @memset(ptr %t.i.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data.i, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad7266_wakeup.exit_crit_edge

entry.ad7266_wakeup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7266_wakeup.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7266_wakeup.exit

ad7266_wakeup.exit:                               ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad7266_wakeup.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7266_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %data.i = getelementptr inbounds %struct.ad7266_state, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %4 = call ptr @memset(ptr %t.i.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data.i, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad7266_powerdown.exit_crit_edge

entry.ad7266_powerdown.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad7266_powerdown.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7266_powerdown.exit

ad7266_powerdown.exit:                            ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad7266_powerdown.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  ret i32 %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_ad7266__290_510_ad7266_driver_init6, !1, !"__initcall__kmod_ad7266__290_510_ad7266_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7266.c", i32 510, i32 1}
!2 = !{ptr @__exitcall_ad7266_driver_exit, !1, !"__exitcall_ad7266_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7266.c", i32 512, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7266.c", i32 513, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7266.c", i32 514, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7266.c", i32 504, i32 11}
!12 = !{ptr @ad7266_driver, !13, !"ad7266_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7266.c", i32 502, i32 26}
!14 = !{ptr @ad7266_id, !15, !"ad7266_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7266.c", i32 495, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7266.c", i32 395, i32 51}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7266.c", i32 378, i32 2}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ad7266.c", i32 378, i32 9}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ad7266.c", i32 378, i32 16}
!24 = distinct !{null, !25, !"ad7266_gpio_labels", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7266.c", i32 377, i32 27}
!26 = !{ptr @ad7266_info, !27, !"ad7266_info", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7266.c", i32 278, i32 30}
!28 = !{ptr @ad7266_chan_infos, !29, !"ad7266_chan_infos", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7266.c", i32 314, i32 38}
!30 = !{ptr @ad7266_channels_u, !31, !"ad7266_channels_u", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad7266.c", i32 229, i32 8}
!32 = !{ptr @ad7266_available_scan_masks, !33, !"ad7266_available_scan_masks", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ad7266.c", i32 283, i32 28}
!34 = !{ptr @ad7266_channels_u_fixed, !35, !"ad7266_channels_u_fixed", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ad7266.c", i32 231, i32 8}
!36 = !{ptr @ad7266_available_scan_masks_fixed, !37, !"ad7266_available_scan_masks_fixed", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ad7266.c", i32 300, i32 28}
!38 = !{ptr @ad7266_channels_s, !39, !"ad7266_channels_s", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ad7266.c", i32 230, i32 8}
!40 = !{ptr @ad7266_channels_s_fixed, !41, !"ad7266_channels_s_fixed", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ad7266.c", i32 232, i32 8}
!42 = !{ptr @ad7266_channels_diff_u, !43, !"ad7266_channels_diff_u", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ad7266.c", i32 266, i32 8}
!44 = !{ptr @ad7266_available_scan_masks_diff, !45, !"ad7266_available_scan_masks_diff", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/ad7266.c", i32 293, i32 28}
!46 = !{ptr @ad7266_channels_diff_fixed_u, !47, !"ad7266_channels_diff_fixed_u", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/ad7266.c", i32 276, i32 8}
!48 = !{ptr @ad7266_channels_diff_s, !49, !"ad7266_channels_diff_s", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ad7266.c", i32 265, i32 8}
!50 = !{ptr @ad7266_channels_diff_fixed_s, !51, !"ad7266_channels_diff_fixed_s", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/ad7266.c", i32 275, i32 8}
!52 = !{ptr @iio_triggered_buffer_setup_ops, !53, !"iio_triggered_buffer_setup_ops", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/ad7266.c", i32 75, i32 42}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i8 0, i8 2}
