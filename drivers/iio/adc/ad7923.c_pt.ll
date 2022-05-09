; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7923.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7923.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ad7923_chip_info = type { ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ad7923_state = type { ptr, [5 x %struct.spi_transfer], [2 x %struct.spi_transfer], %struct.spi_message, %struct.spi_message, ptr, i32, [100 x i8], [12 x i16], [4 x i16], [96 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_ad7923__290_388_ad7923_driver_init6 = internal global ptr @ad7923_driver_init, section ".initcall6.init", align 4
@ad7923_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7923_id, ptr @ad7923_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7923_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7923_driver_exit = internal global ptr @ad7923_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad7923.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [55 x i8] c"ad7923.author=Patrick Vasseur <patrick.vasseur@c-s.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [57 x i8] c"ad7923.description=Analog Devices AD7923 and similar ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [35 x i8] c"ad7923.file=drivers/iio/adc/ad7923\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"ad7923.license=GPL v2\00", section ".modinfo", align 1
@ad7923_id = internal constant { [8 x %struct.spi_device_id], [64 x i8] } { [8 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7904\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad7914\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad7923\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad7924\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad7908\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad7918\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ad7928\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7923\00", [25 x i8] zeroinitializer }, align 32
@ad7923_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7904\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7914\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7923\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7924\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7908\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7918\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7928\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@ad7923_chip_info = internal constant { [6 x %struct.ad7923_chip_info], [48 x i8] } { [6 x %struct.ad7923_chip_info] [%struct.ad7923_chip_info { ptr @ad7904_channels, i32 5 }, %struct.ad7923_chip_info { ptr @ad7914_channels, i32 5 }, %struct.ad7923_chip_info { ptr @ad7924_channels, i32 5 }, %struct.ad7923_chip_info { ptr @ad7908_channels, i32 9 }, %struct.ad7923_chip_info { ptr @ad7918_channels, i32 9 }, %struct.ad7923_chip_info { ptr @ad7928_channels, i32 9 }], [48 x i8] zeroinitializer }, align 32
@ad7923_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7923_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7923_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"refin\00", [26 x i8] zeroinitializer }, align 32
@ad7904_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ad7914_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ad7924_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ad7908_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@ad7918_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@ad7928_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"ad7923_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 380, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"ad7923_id\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 356, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 382, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"ad7923_of_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 368, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"ad7923_chip_info\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 129, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"ad7923_info\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 287, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 336, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"ad7904_channels\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 122, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"ad7914_channels\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 123, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"ad7924_channels\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 124, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"ad7908_channels\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 125, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"ad7918_channels\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 126, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"ad7928_channels\00", align 1
@___asan_gen_.39 = private constant [28 x i8] c"../drivers/iio/adc/ad7923.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 127, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ad7923_driver_exit, ptr @__initcall__kmod_ad7923__290_388_ad7923_driver_init6, ptr @ad7923_driver_exit, ptr @ad7923_driver, ptr @ad7923_id, ptr @.str, ptr @ad7923_of_match, ptr @ad7923_chip_info, ptr @ad7923_info, ptr @.str.1, ptr @ad7904_channels, ptr @ad7914_channels, ptr @ad7924_channels, ptr @ad7908_channels, ptr @ad7918_channels, ptr @ad7928_channels], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7923_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7923_id to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7923_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7923_chip_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7923_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7904_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7914_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7924_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7908_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7918_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7928_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7923_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7923_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7923_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7923_driver, i32 0, i32 4)) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7923_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 1024) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %settings = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 51, ptr %settings, align 8
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #3
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [6 x %struct.ad7923_chip_info], ptr @ad7923_chip_info, i32 0, i32 %5
  %call4 = tail call ptr @spi_get_device_id(ptr noundef %spi) #3
  %name5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %name5, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %channels6 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %channels6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %channels6, align 8
  %num_channels = getelementptr [6 x %struct.ad7923_chip_info], ptr @ad7923_chip_info, i32 0, i32 %5, i32 1
  %11 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_channels, align 4
  %num_channels7 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %num_channels7, align 4
  %info8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ad7923_info, ptr %info8, align 8
  %tx_buf = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 9
  %scan_single_xfer = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %scan_single_xfer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_buf, ptr %scan_single_xfer, align 4
  %len = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 2, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 2, i32 0, i32 7
  %17 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %rx_buf = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 8
  %rx_buf19 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %rx_buf19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_buf, ptr %rx_buf19, align 4
  %len22 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 2, i32 1, i32 2
  %19 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %len22, align 4
  %scan_single_msg = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 4
  %20 = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 4, i32 1
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %scan_single_msg, ptr %scan_single_msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %scan_single_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 4, i32 10
  %24 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 4, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 2, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %scan_single_msg, ptr noundef %scan_single_msg) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %scan_single_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 2, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %scan_single_msg, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i, ptr %scan_single_msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %transfer_list.i96 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 2, i32 1, i32 18
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i98 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i96, ptr noundef %31, ptr noundef %scan_single_msg) #3
  br i1 %call.i.i.i98, label %if.end.i.i.i100, label %spi_message_add_tail.exit.spi_message_add_tail.exit101_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit101_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit101

if.end.i.i.i100:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i96, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i96 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %scan_single_msg, ptr %transfer_list.i96, align 4
  %prev3.i.i.i99 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 2, i32 1, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i99, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i96, ptr %31, align 4
  br label %spi_message_add_tail.exit101

spi_message_add_tail.exit101:                     ; preds = %if.end.i.i.i100, %spi_message_add_tail.exit.spi_message_add_tail.exit101_crit_edge
  %call30 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #3
  %reg = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call30, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end36

if.then33:                                        ; preds = %spi_message_add_tail.exit101
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %spi_message_add_tail.exit101
  %call38 = tail call i32 @regulator_enable(ptr noundef %call30) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7923_regulator_disable, ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end46, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %39) #3
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %call48 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ad7923_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  %call53 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end46.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end36.cleanup_crit_edge, %if.then33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %if.then33 ], [ %call53, %if.end51 ], [ -12, %entry.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call48, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7923_regulator_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.ad7923_state, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7923_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %ring_msg = getelementptr inbounds %struct.ad7923_state, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %ring_msg) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end:                                           ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.ad7923_state, ptr %3, i32 0, i32 8
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #3
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %9, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %rx_buf, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call3, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %rx_buf) #3
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %12) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7923_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %settings.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %settings.i, align 8
  %7 = shl i32 %4, 10
  %8 = shl i32 %6, 4
  %or2.i = or i32 %8, %7
  %9 = trunc i32 %or2.i to i16
  %conv.i = or i16 %9, -32768
  %tx_buf.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %tx_buf.i, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %scan_single_msg.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @spi_sync(ptr noundef %12, ptr noundef %scan_single_msg.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ad7923_scan_direct.exit.thread, label %ad7923_scan_direct.exit

ad7923_scan_direct.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %rx_buf.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rx_buf.i, align 128
  %conv5.i = zext i16 %14 to i32
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #3
  br label %if.end4

ad7923_scan_direct.exit:                          ; preds = %if.end
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %ad7923_scan_direct.exit.cleanup_crit_edge, label %ad7923_scan_direct.exit.if.end4_crit_edge

ad7923_scan_direct.exit.if.end4_crit_edge:        ; preds = %ad7923_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

ad7923_scan_direct.exit.cleanup_crit_edge:        ; preds = %ad7923_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %ad7923_scan_direct.exit.if.end4_crit_edge, %ad7923_scan_direct.exit.thread
  %retval.0.i37 = phi i32 [ %conv5.i, %ad7923_scan_direct.exit.thread ], [ %call.i, %ad7923_scan_direct.exit.if.end4_crit_edge ]
  %15 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %address, align 4
  %17 = lshr i32 %retval.0.i37, 12
  %and = and i32 %17, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %and)
  %cmp6 = icmp eq i32 %16, %and
  br i1 %cmp6, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %and9 = and i32 %retval.0.i37, 4095
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and9, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %reg.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 4
  %call.i31 = tail call i32 @regulator_get_voltage(ptr noundef %20) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i = icmp slt i32 %call.i31, 0
  br i1 %cmp.i, label %sw.bb11.cleanup_crit_edge, label %ad7923_get_range.exit

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

ad7923_get_range.exit:                            ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  %div8.i = udiv i32 %call.i31, 1000
  %settings.i32 = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %settings.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %settings.i32, align 8
  %and.i = lshr i32 %22, 1
  %and.lobit.i = and i32 %and.i, 1
  %23 = xor i32 %and.lobit.i, 1
  %spec.select.i = shl nuw nsw i32 %div8.i, %23
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %realbits, align 1
  %conv = zext i8 %26 to i32
  %27 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %ad7923_get_range.exit, %sw.bb11.cleanup_crit_edge, %if.then7, %if.end4.cleanup_crit_edge, %ad7923_scan_direct.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %ad7923_get_range.exit ], [ 1, %if.then7 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call.i, %ad7923_scan_direct.exit.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i31, %sw.bb11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7923_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %active_scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  %sub = add i32 %3, -1
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef %sub, i32 noundef 0) #3
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  %sub394 = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %sub394)
  %cmp95 = icmp slt i32 %call1, %sub394
  br i1 %cmp95, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %settings = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %len.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %i.096 = phi i32 [ %call1, %for.body.lr.ph ], [ %call9, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %settings, align 8
  %8 = shl i32 %i.096, 10
  %9 = shl i32 %7, 4
  %or5 = or i32 %9, %8
  %10 = trunc i32 %or5 to i16
  %conv = or i16 %10, -32768
  %inc = add i32 %len.097, 1
  %arrayidx = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 9, i32 %len.097
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %arrayidx, align 2
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels, align 4
  %sub8 = add i32 %13, -1
  %add = add nsw i32 %i.096, 1
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef %sub8, i32 noundef %add) #3
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_channels, align 4
  %sub3 = add i32 %15, -1
  %cmp = icmp slt i32 %call9, %sub3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %tx_buf10 = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 9
  %ring_xfer = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ring_xfer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx_buf10, ptr %ring_xfer, align 4
  %len16 = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len.0.lcssa, ptr %len16, align 4
  %cs_change = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 0, i32 7
  %18 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %ring_msg = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 3, i32 1
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %ring_msg, ptr %ring_msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ring_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 3, i32 10
  %23 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 3, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %ring_msg, ptr noundef %ring_msg) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.spi_message_add_tail.exit_crit_edge

for.end.spi_message_add_tail.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ring_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ring_msg, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i, ptr %ring_msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %for.end.spi_message_add_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa)
  %cmp2398 = icmp sgt i32 %len.0.lcssa, 0
  br i1 %cmp2398, label %spi_message_add_tail.exit.for.body25_crit_edge, label %spi_message_add_tail.exit.for.end48_crit_edge

spi_message_add_tail.exit.for.end48_crit_edge:    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end48

spi_message_add_tail.exit.for.body25_crit_edge:   ; preds = %spi_message_add_tail.exit
  br label %for.body25

for.body25:                                       ; preds = %spi_message_add_tail.exit93.for.body25_crit_edge, %spi_message_add_tail.exit.for.body25_crit_edge
  %i.199 = phi i32 [ %add28, %spi_message_add_tail.exit93.for.body25_crit_edge ], [ 0, %spi_message_add_tail.exit.for.body25_crit_edge ]
  %arrayidx26 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 8, i32 %i.199
  %add28 = add nuw nsw i32 %i.199, 1
  %rx_buf30 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 %add28, i32 1
  %29 = ptrtoint ptr %rx_buf30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx26, ptr %rx_buf30, align 4
  %len34 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 %add28, i32 2
  %30 = ptrtoint ptr %len34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %len34, align 4
  %cs_change38 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 %add28, i32 7
  %31 = ptrtoint ptr %cs_change38 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load39 = load i8, ptr %cs_change38, align 4
  %bf.set41 = or i8 %bf.load39, 64
  store i8 %bf.set41, ptr %cs_change38, align 4
  %transfer_list.i88 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 %add28, i32 18
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i90 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i88, ptr noundef %33, ptr noundef %ring_msg) #3
  br i1 %call.i.i.i90, label %if.end.i.i.i92, label %for.body25.spi_message_add_tail.exit93_crit_edge

for.body25.spi_message_add_tail.exit93_crit_edge: ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #5
  br label %spi_message_add_tail.exit93

if.end.i.i.i92:                                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i88, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %transfer_list.i88 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ring_msg, ptr %transfer_list.i88, align 4
  %prev3.i.i.i91 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 %add28, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i91, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i88, ptr %33, align 4
  br label %spi_message_add_tail.exit93

spi_message_add_tail.exit93:                      ; preds = %if.end.i.i.i92, %for.body25.spi_message_add_tail.exit93_crit_edge
  %exitcond.not = icmp eq i32 %add28, %len.0.lcssa
  br i1 %exitcond.not, label %spi_message_add_tail.exit93.for.end48_crit_edge, label %spi_message_add_tail.exit93.for.body25_crit_edge

spi_message_add_tail.exit93.for.body25_crit_edge: ; preds = %spi_message_add_tail.exit93
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body25

spi_message_add_tail.exit93.for.end48_crit_edge:  ; preds = %spi_message_add_tail.exit93
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end48

for.end48:                                        ; preds = %spi_message_add_tail.exit93.for.end48_crit_edge, %spi_message_add_tail.exit.for.end48_crit_edge
  %i.1.lcssa = phi i32 [ 0, %spi_message_add_tail.exit.for.end48_crit_edge ], [ %len.0.lcssa, %spi_message_add_tail.exit93.for.end48_crit_edge ]
  %add50 = add nuw i32 %i.1.lcssa, 1
  %cs_change52 = getelementptr %struct.ad7923_state, ptr %1, i32 0, i32 1, i32 %add50, i32 7
  %38 = ptrtoint ptr %cs_change52 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load53 = load i8, ptr %cs_change52, align 4
  %bf.clear54 = and i8 %bf.load53, -65
  store i8 %bf.clear54, ptr %cs_change52, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_ad7923__290_388_ad7923_driver_init6, !1, !"__initcall__kmod_ad7923__290_388_ad7923_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7923.c", i32 388, i32 1}
!2 = !{ptr @__exitcall_ad7923_driver_exit, !1, !"__exitcall_ad7923_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7923.c", i32 390, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7923.c", i32 391, i32 1}
!7 = !{ptr @__UNIQUE_ID_description293, !8, !"__UNIQUE_ID_description293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7923.c", i32 392, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/iio/adc/ad7923.c", i32 393, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7923.c", i32 382, i32 11}
!14 = !{ptr @ad7923_driver, !15, !"ad7923_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7923.c", i32 380, i32 26}
!16 = !{ptr @ad7923_id, !17, !"ad7923_id", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7923.c", i32 356, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7923.c", i32 336, i32 42}
!20 = !{ptr @ad7923_chip_info, !21, !"ad7923_chip_info", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ad7923.c", i32 129, i32 38}
!22 = !{ptr @ad7904_channels, !23, !"ad7904_channels", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ad7923.c", i32 122, i32 8}
!24 = !{ptr @ad7914_channels, !25, !"ad7914_channels", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7923.c", i32 123, i32 8}
!26 = !{ptr @ad7924_channels, !27, !"ad7924_channels", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7923.c", i32 124, i32 8}
!28 = !{ptr @ad7908_channels, !29, !"ad7908_channels", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7923.c", i32 125, i32 8}
!30 = !{ptr @ad7918_channels, !31, !"ad7918_channels", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad7923.c", i32 126, i32 8}
!32 = !{ptr @ad7928_channels, !33, !"ad7928_channels", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ad7923.c", i32 127, i32 8}
!34 = !{ptr @ad7923_info, !35, !"ad7923_info", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ad7923.c", i32 287, i32 30}
!36 = !{ptr @ad7923_of_match, !37, !"ad7923_of_match", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ad7923.c", i32 368, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
