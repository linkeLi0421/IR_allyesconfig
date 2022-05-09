; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7476.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7476.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.ad7476_chip_info = type { i32, [2 x %struct.iio_chan_spec], [2 x %struct.iio_chan_spec], ptr, i8, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ad7476_state = type { ptr, ptr, ptr, ptr, %struct.spi_transfer, %struct.spi_message, [88 x i8], [16 x i8], [112 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_ad7476__290_461_ad7476_driver_init6 = internal global ptr @ad7476_driver_init, section ".initcall6.init", align 4
@ad7476_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7476_id, ptr @ad7476_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7476_driver_exit = internal global ptr @ad7476_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad7476.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [68 x i8] c"ad7476.description=Analog Devices AD7476 and similar 1-channel ADCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad7476.file=drivers/iio/adc/ad7476\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad7476.license=GPL v2\00", section ".modinfo", align 1
@ad7476_id = internal constant { [29 x %struct.spi_device_id], [268 x i8] } { [29 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7091\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad7091r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad7273\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad7274\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad7276\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ad7277\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"ad7278\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"ad7466\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"ad7467\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"ad7468\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id { [32 x i8] c"ad7475\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.spi_device_id { [32 x i8] c"ad7476\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"ad7476a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"ad7477\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"ad7477a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"ad7478\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id { [32 x i8] c"ad7478a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id { [32 x i8] c"ad7495\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.spi_device_id { [32 x i8] c"ad7910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"ad7920\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"ad7940\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.spi_device_id { [32 x i8] c"adc081s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.spi_device_id { [32 x i8] c"adc101s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.spi_device_id { [32 x i8] c"adc121s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.spi_device_id { [32 x i8] c"ads7866\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.spi_device_id { [32 x i8] c"ads7867\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17 }, %struct.spi_device_id { [32 x i8] c"ads7868\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18 }, %struct.spi_device_id { [32 x i8] c"ltc2314-14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 19 }, %struct.spi_device_id zeroinitializer], [268 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7476\00", [25 x i8] zeroinitializer }, align 32
@ad7476_chip_info_tbl = internal constant { [20 x %struct.ad7476_chip_info], [1808 x i8] } { [20 x %struct.ad7476_chip_info] [%struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], ptr @ad7091_reset, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 2500000, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], ptr @ad7091_reset, i8 1, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 5, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 1, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 1, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 5, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 8, i8 16, i8 7, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 1, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 8, i8 16, i8 5, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 1, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 1, i8 1 }, %struct.ad7476_chip_info { i32 2500000, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 1, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 1 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 1, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 0, i8 0 }, %struct.ad7476_chip_info { i32 0, [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 1, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [2 x %struct.iio_chan_spec] zeroinitializer, ptr null, i8 1, i8 0 }], [1808 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdrive\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,conversion-start\00", [43 x i8] zeroinitializer }, align 32
@ad7476_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7476_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"ad7476_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 454, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"ad7476_id\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 421, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 456, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"ad7476_chip_info_tbl\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 195, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 319, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 339, i32 49 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 372, i32 39 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 387, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"ad7476_info\00", align 1
@___asan_gen_.30 = private constant [28 x i8] c"../drivers/iio/adc/ad7476.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 293, i32 30 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad7476_driver_exit, ptr @__initcall__kmod_ad7476__290_461_ad7476_driver_init6, ptr @ad7476_driver_exit, ptr @ad7476_driver, ptr @ad7476_id, ptr @.str, ptr @ad7476_chip_info_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ad7476_info], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7476_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7476_id to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7476_chip_info_tbl to i32), i32 7280, i32 9088, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7476_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7476_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7476_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7476_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7476_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7476_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [20 x %struct.ad7476_chip_info], ptr @ad7476_chip_info_tbl, i32 0, i32 %3
  %chip_info = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %chip_info, align 4
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @regulator_enable(ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7476_reg_disable, ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end17, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %call4) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %ref_reg = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ref_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %ref_reg, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %11 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_info, align 4
  %has_vref = getelementptr inbounds %struct.ad7476_chip_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %has_vref to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_vref, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %if.end21.if.end58_crit_edge, label %if.then24

if.end21.if.end58_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then24:                                        ; preds = %if.end21
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool27.not = icmp eq i32 %16, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then24
  %call30 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.2) #5
  %cmp.i196 = icmp ule ptr %call30, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %call30 to i32
  %cmp.not = icmp eq ptr %call30, inttoptr (i32 -19 to ptr)
  %or.cond = or i1 %cmp.i196, %cmp.not
  br i1 %or.cond, label %if.then28.if.end42_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28.if.end42_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.else:                                          ; preds = %if.then24
  %call37 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.2) #5
  %cmp.i197 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then39, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.else.if.end42_crit_edge, %if.then28.if.end42_crit_edge
  %reg.0 = phi ptr [ %call30, %if.then28.if.end42_crit_edge ], [ %call37, %if.else.if.end42_crit_edge ]
  %cmp.i198 = icmp ugt ptr %reg.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %if.end42.if.end58.sink.split_crit_edge, label %if.then44

if.end42.if.end58.sink.split_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.sink.split

if.then44:                                        ; preds = %if.end42
  %call45 = tail call i32 @regulator_enable(ptr noundef %reg.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  %call50 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %spi, ptr noundef %reg.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.if.end58.sink.split_crit_edge, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48.if.end58.sink.split_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.sink.split

if.end58.sink.split:                              ; preds = %if.end48.if.end58.sink.split_crit_edge, %if.end42.if.end58.sink.split_crit_edge
  %reg.0.sink = phi ptr [ %reg.0, %if.end48.if.end58.sink.split_crit_edge ], [ null, %if.end42.if.end58.sink.split_crit_edge ]
  %ref_reg54 = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ref_reg54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg.0.sink, ptr %ref_reg54, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %if.end21.if.end58_crit_edge
  %20 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip_info, align 4
  %has_vdrive = getelementptr inbounds %struct.ad7476_chip_info, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %has_vdrive to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_vdrive, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool60.not = icmp eq i8 %23, 0
  br i1 %tobool60.not, label %if.end58.if.end77_crit_edge, label %if.then61

if.end58.if.end77_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then61:                                        ; preds = %if.end58
  %call63 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.3) #5
  %cmp.i199 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call63 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.then61
  %call68 = tail call i32 @regulator_enable(ptr noundef %call63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %call73 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %spi, ptr noundef %call63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end71.if.end77_crit_edge, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end77:                                         ; preds = %if.end71.if.end77_crit_edge, %if.end58.if.end77_crit_edge
  %call79 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef 3) #5
  %convst_gpio = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %convst_gpio to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call79, ptr %convst_gpio, align 4
  %cmp.i200 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call79 to i32
  br label %cleanup

if.end85:                                         ; preds = %if.end77
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spi, ptr %1, align 128
  %call87 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %name88 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %28 = ptrtoint ptr %name88 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call87, ptr %name88, align 8
  %29 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call, align 8
  %30 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip_info, align 4
  %channel = getelementptr inbounds %struct.ad7476_chip_info, ptr %31, i32 0, i32 1
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %32 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %channel, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %33 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %34 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ad7476_info, ptr %info, align 8
  %35 = ptrtoint ptr %convst_gpio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %convst_gpio, align 4
  %tobool92.not = icmp eq ptr %36, null
  br i1 %tobool92.not, label %if.end85.if.end97_crit_edge, label %if.then93

if.end85.if.end97_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then93:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip_info, align 4
  %convst_channel = getelementptr inbounds %struct.ad7476_chip_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %convst_channel, ptr %channels, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.end85.if.end97_crit_edge
  %data = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 7
  %rx_buf = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %data, ptr %rx_buf, align 4
  %41 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_info, align 4
  %storagebits = getelementptr inbounds %struct.ad7476_chip_info, ptr %42, i32 0, i32 1, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %storagebits to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %storagebits, align 2
  %45 = lshr i8 %44, 3
  %div = zext i8 %45 to i32
  %len = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div, ptr %len, align 8
  %msg = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 5
  %47 = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 5, i32 1
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 5, i32 10
  %51 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 5, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 4, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end97.spi_message_add_tail.exit_crit_edge

if.end97.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 4, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %56 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end97.spi_message_add_tail.exit_crit_edge
  %call105 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ad7476_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %spi_message_add_tail.exit.cleanup_crit_edge

spi_message_add_tail.exit.cleanup_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end108:                                        ; preds = %spi_message_add_tail.exit
  %57 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip_info, align 4
  %reset = getelementptr inbounds %struct.ad7476_chip_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset, align 4
  %tobool110.not = icmp eq ptr %60, null
  br i1 %tobool110.not, label %if.end108.if.end114_crit_edge, label %if.then111

if.end108.if.end114_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %60(ptr noundef %1) #5
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end108.if.end114_crit_edge
  %call116 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %spi_message_add_tail.exit.cleanup_crit_edge, %if.then82, %if.end71.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then65, %if.end48.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.then39, %if.then28.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end8.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %24, %if.then65 ], [ %26, %if.then82 ], [ %call116, %if.end114 ], [ %18, %if.then39 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call45, %if.then44.cleanup_crit_edge ], [ %call50, %if.end48.cleanup_crit_edge ], [ %call68, %if.end67.cleanup_crit_edge ], [ %call73, %if.end71.cleanup_crit_edge ], [ %call105, %spi_message_add_tail.exit.cleanup_crit_edge ], [ %17, %if.then28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ad7476_reg_disable, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @regulator_disable(ptr noundef %data) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7476_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7476_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %convst_gpio.i = getelementptr inbounds %struct.ad7476_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %convst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %convst_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.ad7091_convst.exit_crit_edge, label %if.end.i

entry.ad7091_convst.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7091_convst.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #5
  %7 = ptrtoint ptr %convst_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %convst_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #5
  br label %ad7091_convst.exit

ad7091_convst.exit:                               ; preds = %if.end.i, %entry.ad7091_convst.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 128
  %msg = getelementptr inbounds %struct.ad7476_state, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @spi_sync(ptr noundef %11, ptr noundef %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %ad7091_convst.exit.done_crit_edge, label %if.end

ad7091_convst.exit.done_crit_edge:                ; preds = %ad7091_convst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %ad7091_convst.exit
  %data = getelementptr inbounds %struct.ad7476_state, ptr %3, i32 0, i32 7
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %scan_timestamp.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i11 = icmp eq i8 %13, 0
  br i1 %tobool.not.i11, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %15, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call3, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data) #5
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %ad7091_convst.exit.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %18) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7091_reset(ptr noundef %st) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %data = getelementptr inbounds %struct.ad7476_state, ptr %st, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %2 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %3 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %4 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %5 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_read.exit_crit_edge

entry.spi_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %entry.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7476_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %convst_gpio.i.i = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %convst_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %convst_gpio.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.ad7091_convst.exit.i_crit_edge, label %if.end.i.i

if.end.ad7091_convst.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7091_convst.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %4, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #5
  %6 = ptrtoint ptr %convst_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %convst_gpio.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #5
  br label %ad7091_convst.exit.i

ad7091_convst.exit.i:                             ; preds = %if.end.i.i, %if.end.ad7091_convst.exit.i_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %msg.i = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @spi_sync(ptr noundef %10, ptr noundef %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ad7476_scan_direct.exit.thread, label %ad7476_scan_direct.exit

ad7476_scan_direct.exit.thread:                   ; preds = %ad7091_convst.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %data.i = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data.i, align 2
  %conv.i = zext i16 %12 to i32
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %if.end4

ad7476_scan_direct.exit:                          ; preds = %ad7091_convst.exit.i
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %ad7476_scan_direct.exit.cleanup_crit_edge, label %ad7476_scan_direct.exit.if.end4_crit_edge

ad7476_scan_direct.exit.if.end4_crit_edge:        ; preds = %ad7476_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

ad7476_scan_direct.exit.cleanup_crit_edge:        ; preds = %ad7476_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %ad7476_scan_direct.exit.if.end4_crit_edge, %ad7476_scan_direct.exit.thread
  %retval.0.i45 = phi i32 [ %conv.i, %ad7476_scan_direct.exit.thread ], [ %call.i, %ad7476_scan_direct.exit.if.end4_crit_edge ]
  %chip_info = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_info, align 4
  %shift = getelementptr inbounds %struct.ad7476_chip_info, ptr %14, i32 0, i32 1, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift, align 1
  %conv = zext i8 %16 to i32
  %shr46 = lshr i32 %retval.0.i45, %conv
  %realbits = getelementptr inbounds %struct.ad7476_chip_info, ptr %14, i32 0, i32 1, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %realbits, align 1
  %conv9 = zext i8 %18 to i32
  %sub10 = sub nsw i32 32, %conv9
  %shr11 = lshr i32 -1, %sub10
  %and12 = and i32 %shr11, %shr46
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and12, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %ref_reg = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %ref_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ref_reg, align 8
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %sw.bb13
  %call17 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then15.cleanup_crit_edge, label %if.then15.if.end23_crit_edge

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %chip_info22 = getelementptr inbounds %struct.ad7476_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %chip_info22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_info22, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then15.if.end23_crit_edge
  %scale_uv.0 = phi i32 [ %call17, %if.then15.if.end23_crit_edge ], [ %25, %if.else ]
  %div = sdiv i32 %scale_uv.0, 1000
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %val, align 4
  %realbits25 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %realbits25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %realbits25, align 1
  %conv26 = zext i8 %28 to i32
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv26, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then15.cleanup_crit_edge, %if.end4, %ad7476_scan_direct.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end23 ], [ 1, %if.end4 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call.i, %ad7476_scan_direct.exit.cleanup_crit_edge ], [ %call17, %if.then15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_ad7476__290_461_ad7476_driver_init6, !1, !"__initcall__kmod_ad7476__290_461_ad7476_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7476.c", i32 461, i32 1}
!2 = !{ptr @__exitcall_ad7476_driver_exit, !1, !"__exitcall_ad7476_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7476.c", i32 463, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7476.c", i32 464, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7476.c", i32 465, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7476.c", i32 456, i32 11}
!12 = !{ptr @ad7476_driver, !13, !"ad7476_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7476.c", i32 454, i32 26}
!14 = !{ptr @ad7476_id, !15, !"ad7476_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7476.c", i32 421, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7476.c", i32 319, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7476.c", i32 339, i32 49}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ad7476.c", i32 372, i32 39}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ad7476.c", i32 387, i32 9}
!24 = !{ptr @ad7476_chip_info_tbl, !25, !"ad7476_chip_info_tbl", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7476.c", i32 195, i32 38}
!26 = !{ptr @ad7476_info, !27, !"ad7476_info", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7476.c", i32 293, i32 30}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
