; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5064.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5064.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ad5064_chip_info = type { i8, i32, ptr, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.spi_device_id = type { [32 x i8], i32 }
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
%struct.ad5064_state = type { ptr, ptr, [4 x %struct.regulator_bulk_data], [8 x i8], [8 x i8], [8 x i32], i8, ptr, %struct.mutex, [52 x i8], %union.anon.87, [124 x i8] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%union.anon.87 = type { i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@ad5064_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad5064_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad5064_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ad5064__290_1096_ad5064_init6 = internal global ptr @ad5064_init, section ".initcall6.init", align 4
@__exitcall_ad5064_exit = internal global ptr @ad5064_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"ad5064.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [72 x i8] c"ad5064.description=Analog Devices AD5024 and similar multi-channel DACs\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad5064.file=drivers/iio/dac/ad5064\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad5064.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5064\00", [25 x i8] zeroinitializer }, align 32
@ad5064_i2c_ids = internal constant { [48 x %struct.i2c_device_id], [288 x i8] } { [48 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad5625\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"ad5625r-1v25\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"ad5625r-2v5\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"ad5627\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"ad5627r-1v25\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"ad5627r-2v5\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"ad5629-1\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id { [20 x i8] c"ad5629-2\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"ad5629-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"ad5645r-1v25\00\00\00\00\00\00\00\00", i32 17 }, %struct.i2c_device_id { [20 x i8] c"ad5645r-2v5\00\00\00\00\00\00\00\00\00", i32 18 }, %struct.i2c_device_id { [20 x i8] c"ad5665\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 23 }, %struct.i2c_device_id { [20 x i8] c"ad5665r-1v25\00\00\00\00\00\00\00\00", i32 24 }, %struct.i2c_device_id { [20 x i8] c"ad5665r-2v5\00\00\00\00\00\00\00\00\00", i32 25 }, %struct.i2c_device_id { [20 x i8] c"ad5667\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 28 }, %struct.i2c_device_id { [20 x i8] c"ad5667r-1v25\00\00\00\00\00\00\00\00", i32 29 }, %struct.i2c_device_id { [20 x i8] c"ad5667r-2v5\00\00\00\00\00\00\00\00\00", i32 30 }, %struct.i2c_device_id { [20 x i8] c"ad5669-1\00\00\00\00\00\00\00\00\00\00\00\00", i32 33 }, %struct.i2c_device_id { [20 x i8] c"ad5669-2\00\00\00\00\00\00\00\00\00\00\00\00", i32 34 }, %struct.i2c_device_id { [20 x i8] c"ad5669-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 34 }, %struct.i2c_device_id { [20 x i8] c"ltc2606\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 35 }, %struct.i2c_device_id { [20 x i8] c"ltc2607\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36 }, %struct.i2c_device_id { [20 x i8] c"ltc2609\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 37 }, %struct.i2c_device_id { [20 x i8] c"ltc2616\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 38 }, %struct.i2c_device_id { [20 x i8] c"ltc2617\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 39 }, %struct.i2c_device_id { [20 x i8] c"ltc2619\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.i2c_device_id { [20 x i8] c"ltc2626\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41 }, %struct.i2c_device_id { [20 x i8] c"ltc2627\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42 }, %struct.i2c_device_id { [20 x i8] c"ltc2629\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 43 }, %struct.i2c_device_id { [20 x i8] c"ltc2631-l12\00\00\00\00\00\00\00\00\00", i32 44 }, %struct.i2c_device_id { [20 x i8] c"ltc2631-h12\00\00\00\00\00\00\00\00\00", i32 45 }, %struct.i2c_device_id { [20 x i8] c"ltc2631-l10\00\00\00\00\00\00\00\00\00", i32 46 }, %struct.i2c_device_id { [20 x i8] c"ltc2631-h10\00\00\00\00\00\00\00\00\00", i32 47 }, %struct.i2c_device_id { [20 x i8] c"ltc2631-l8\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.i2c_device_id { [20 x i8] c"ltc2631-h8\00\00\00\00\00\00\00\00\00\00", i32 49 }, %struct.i2c_device_id { [20 x i8] c"ltc2633-l12\00\00\00\00\00\00\00\00\00", i32 50 }, %struct.i2c_device_id { [20 x i8] c"ltc2633-h12\00\00\00\00\00\00\00\00\00", i32 51 }, %struct.i2c_device_id { [20 x i8] c"ltc2633-l10\00\00\00\00\00\00\00\00\00", i32 52 }, %struct.i2c_device_id { [20 x i8] c"ltc2633-h10\00\00\00\00\00\00\00\00\00", i32 53 }, %struct.i2c_device_id { [20 x i8] c"ltc2633-l8\00\00\00\00\00\00\00\00\00\00", i32 54 }, %struct.i2c_device_id { [20 x i8] c"ltc2633-h8\00\00\00\00\00\00\00\00\00\00", i32 55 }, %struct.i2c_device_id { [20 x i8] c"ltc2635-l12\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.i2c_device_id { [20 x i8] c"ltc2635-h12\00\00\00\00\00\00\00\00\00", i32 57 }, %struct.i2c_device_id { [20 x i8] c"ltc2635-l10\00\00\00\00\00\00\00\00\00", i32 58 }, %struct.i2c_device_id { [20 x i8] c"ltc2635-h10\00\00\00\00\00\00\00\00\00", i32 59 }, %struct.i2c_device_id { [20 x i8] c"ltc2635-l8\00\00\00\00\00\00\00\00\00\00", i32 60 }, %struct.i2c_device_id { [20 x i8] c"ltc2635-h8\00\00\00\00\00\00\00\00\00\00", i32 61 }, %struct.i2c_device_id zeroinitializer], [288 x i8] zeroinitializer }, align 32
@ad5064_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad5064_chip_info_tbl = internal constant { [62 x %struct.ad5064_chip_info], [296 x i8] } { [62 x %struct.ad5064_chip_info] [%struct.ad5064_chip_info { i8 0, i32 0, ptr @ad5024_channels, i32 4, i32 0 }, %struct.ad5064_chip_info { i8 0, i32 0, ptr @ad5025_channels, i32 2, i32 0 }, %struct.ad5064_chip_info { i8 0, i32 0, ptr @ad5044_channels, i32 4, i32 0 }, %struct.ad5064_chip_info { i8 0, i32 0, ptr @ad5045_channels, i32 2, i32 0 }, %struct.ad5064_chip_info { i8 0, i32 0, ptr @ad5064_channels, i32 4, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ad5064_channels, i32 4, i32 0 }, %struct.ad5064_chip_info { i8 0, i32 0, ptr @ad5065_channels, i32 2, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ad5629_channels, i32 4, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 1250000, ptr @ad5629_channels, i32 4, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5629_channels, i32 4, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ad5629_channels, i32 2, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 1250000, ptr @ad5629_channels, i32 2, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5629_channels, i32 2, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5024_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 5000000, ptr @ad5024_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5629_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 5000000, ptr @ad5629_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 1250000, ptr @ad5645_channels, i32 4, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5645_channels, i32 4, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 1250000, ptr @ad5645_channels, i32 2, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5645_channels, i32 2, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5044_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 5000000, ptr @ad5044_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ad5669_channels, i32 4, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 1250000, ptr @ad5669_channels, i32 4, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5669_channels, i32 4, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5064_channels, i32 4, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 5000000, ptr @ad5064_channels, i32 4, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ad5669_channels, i32 2, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 1250000, ptr @ad5669_channels, i32 2, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5669_channels, i32 2, i32 1 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5064_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 5000000, ptr @ad5064_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ad5669_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 5000000, ptr @ad5669_channels, i32 8, i32 0 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ltc2607_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ltc2607_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 0, i32 0, ptr @ltc2607_channels, i32 4, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ltc2617_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ltc2617_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 0, i32 0, ptr @ltc2617_channels, i32 4, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ltc2627_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 0, ptr @ltc2627_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 0, i32 0, ptr @ltc2627_channels, i32 4, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2627_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2627_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2631_10_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2631_10_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2631_8_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2631_8_channels, i32 1, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2627_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2627_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2631_10_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2631_10_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2631_8_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2631_8_channels, i32 2, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2627_channels, i32 4, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2627_channels, i32 4, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2631_10_channels, i32 4, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2631_10_channels, i32 4, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 2500000, ptr @ltc2631_8_channels, i32 4, i32 2 }, %struct.ad5064_chip_info { i8 1, i32 4096000, ptr @ltc2631_8_channels, i32 4, i32 2 }], [296 x i8] zeroinitializer }, align 32
@ad5064_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5064_read_raw, ptr null, ptr null, ptr @ad5064_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5024_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ad5025_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@ad5044_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ad5045_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@ad5064_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ad5065_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@ad5629_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ad5645_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ad5669_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5064_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ltc2607_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ltc2617_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ltc2627_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ltc2631_10_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ltc2631_8_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 8, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2617_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ad5064_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.2, i32 0, ptr @ad5064_read_dac_powerdown, ptr @ad5064_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.3, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ad5064_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.4, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ad5064_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@ad5064_powerdown_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ad5064_powerdown_modes, i32 3, ptr @ad5064_set_powerdown_mode, ptr @ad5064_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ad5064_powerdown_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1kohm_to_gnd\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"100kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"three_state\00", [20 x i8] zeroinitializer }, align 32
@ltc2617_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.2, i32 0, ptr @ad5064_read_dac_powerdown, ptr @ad5064_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.3, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ltc2617_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.4, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ltc2617_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ltc2617_powerdown_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ltc2617_powerdown_modes, i32 1, ptr @ad5064_set_powerdown_mode, ptr @ad5064_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@ltc2617_powerdown_modes = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"90kohm_to_gnd\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad5064_request_vref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 841, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable internal vref: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ad5064_request_vref\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5064.c\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5064_request_vref._entry_ptr = internal global ptr @ad5064_request_vref._entry, section ".printk_index", align 4
@ad5064_vref_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrefA\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrefB\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrefC\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrefD\00", [26 x i8] zeroinitializer }, align 32
@ad5064_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5064_spi_ids, ptr @ad5064_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@ad5064_spi_ids = internal constant { [17 x %struct.spi_device_id], [156 x i8] } { [17 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5025\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad5044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad5045\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad5064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ad5064-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"ad5065\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"ad5628-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.spi_device_id { [32 x i8] c"ad5628-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.spi_device_id { [32 x i8] c"ad5648-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21 }, %struct.spi_device_id { [32 x i8] c"ad5648-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 22 }, %struct.spi_device_id { [32 x i8] c"ad5666-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 26 }, %struct.spi_device_id { [32 x i8] c"ad5666-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 27 }, %struct.spi_device_id { [32 x i8] c"ad5668-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 31 }, %struct.spi_device_id { [32 x i8] c"ad5668-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.spi_device_id { [32 x i8] c"ad5668-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.spi_device_id zeroinitializer], [156 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"ad5064_i2c_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1055, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1057, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"ad5064_i2c_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1003, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 867, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"ad5064_chip_info_tbl\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 460, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"ad5064_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 367, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"ad5024_channels\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 431, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"ad5025_channels\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 435, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"ad5044_channels\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 432, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"ad5045_channels\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 436, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"ad5064_channels\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 433, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"ad5065_channels\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 437, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"ad5629_channels\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 439, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"ad5645_channels\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 440, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"ad5669_channels\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 441, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"ltc2607_channels\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 443, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"ltc2617_channels\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 444, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"ltc2627_channels\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 445, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"ltc2631_10_channels\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 447, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"ltc2631_8_channels\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 448, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"ad5064_ext_info\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 372, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 374, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 379, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"ad5064_powerdown_mode_enum\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 261, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 380, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 280, i32 25 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"ad5064_powerdown_modes\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 228, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 229, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 230, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 231, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"ltc2617_ext_info\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 384, i32 44 }
@___asan_gen_.118 = private unnamed_addr constant [28 x i8] c"ltc2617_powerdown_mode_enum\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 268, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"ltc2617_powerdown_modes\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 234, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 235, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 829, i32 62 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 841, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"ad5064_vref_names\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 783, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 784, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 785, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 786, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 787, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"ad5064_spi_driver\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 943, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"ad5064_spi_ids\00", align 1
@___asan_gen_.167 = private constant [28 x i8] c"../drivers/iio/dac/ad5064.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 922, i32 35 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5064_exit, ptr @__initcall__kmod_ad5064__290_1096_ad5064_init6, ptr @ad5064_exit, ptr @ad5064_i2c_unregister_driver, ptr @ad5064_request_vref._entry, ptr @ad5064_request_vref._entry_ptr, ptr @ad5064_i2c_driver, ptr @.str, ptr @ad5064_i2c_ids, ptr @ad5064_probe.__key, ptr @.str.1, ptr @ad5064_chip_info_tbl, ptr @ad5064_info, ptr @ad5024_channels, ptr @ad5025_channels, ptr @ad5044_channels, ptr @ad5045_channels, ptr @ad5064_channels, ptr @ad5065_channels, ptr @ad5629_channels, ptr @ad5645_channels, ptr @ad5669_channels, ptr @ltc2607_channels, ptr @ltc2617_channels, ptr @ltc2627_channels, ptr @ltc2631_10_channels, ptr @ltc2631_8_channels, ptr @ad5064_ext_info, ptr @.str.2, ptr @.str.3, ptr @ad5064_powerdown_mode_enum, ptr @.str.4, ptr @.str.5, ptr @ad5064_powerdown_modes, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ltc2617_ext_info, ptr @ltc2617_powerdown_mode_enum, ptr @ltc2617_powerdown_modes, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ad5064_vref_names, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ad5064_spi_driver, ptr @ad5064_spi_ids], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_i2c_ids to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_chip_info_tbl to i32), i32 1240, i32 1536, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5024_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5025_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5044_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5045_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5065_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5629_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5645_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5669_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2607_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2617_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2627_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2631_10_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2631_8_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_powerdown_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_powerdown_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2617_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2617_powerdown_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2617_powerdown_modes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_request_vref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_vref_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5064_spi_ids to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5064_i2c_unregister_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ad5064_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5064_spi_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i8 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad5064_i2c_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool2.not = icmp eq i32 %call.i8, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5064_spi_driver, i32 0, i32 4)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i8, %if.then3 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5064_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ad5064_i2c_driver) #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5064_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_i2c_probe(ptr noundef %i2c, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call fastcc i32 @ad5064_probe(ptr noundef %dev, i32 noundef %1, ptr noundef %id, ptr noundef nonnull @ad5064_i2c_write)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5064_probe(ptr noundef %dev, i32 noundef %type, ptr noundef %name, ptr noundef %write) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 384) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5064_probe.__key) #7
  %arrayidx = getelementptr [62 x %struct.ad5064_chip_info], ptr @ad5064_chip_info_tbl, i32 0, i32 %type
  %chip_info = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %chip_info, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %1, align 128
  %write3 = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %write3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %write, ptr %write3, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %ad5064_vref_name.exit.i, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %ad5064_vref_name.exit.i ]
  %5 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %ad5064_num_vref.exit.i, label %ad5064_num_vref.exit.thread.i

ad5064_num_vref.exit.i:                           ; preds = %for.cond.i
  %num_channels.i.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %10)
  %cmp.i = icmp ult i32 %i.0.i, %10
  br i1 %cmp.i, label %cond.false.i47.i, label %for.end.i

ad5064_num_vref.exit.thread.i:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp58.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp58.i, label %ad5064_num_vref.exit.thread.i.ad5064_vref_name.exit.i_crit_edge, label %for.end.thread.i

ad5064_num_vref.exit.thread.i.ad5064_vref_name.exit.i_crit_edge: ; preds = %ad5064_num_vref.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5064_vref_name.exit.i

cond.false.i47.i:                                 ; preds = %ad5064_num_vref.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ad5064_vref_names, i32 0, i32 %i.0.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  br label %ad5064_vref_name.exit.i

ad5064_vref_name.exit.i:                          ; preds = %cond.false.i47.i, %ad5064_num_vref.exit.thread.i.ad5064_vref_name.exit.i_crit_edge
  %cond.i48.i = phi ptr [ %12, %cond.false.i47.i ], [ @.str.10, %ad5064_num_vref.exit.thread.i.ad5064_vref_name.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 2, i32 %i.0.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i48.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.0.i, 1
  br label %for.cond.i

for.end.i:                                        ; preds = %ad5064_num_vref.exit.i
  %internal_vref.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %internal_vref.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %internal_vref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %for.end.i.ad5064_num_vref.exit54.i_crit_edge, label %for.end.i.if.end.i_crit_edge

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.end.i.ad5064_num_vref.exit54.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5064_num_vref.exit54.i

for.end.thread.i:                                 ; preds = %ad5064_num_vref.exit.thread.i
  %internal_vref59.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %internal_vref59.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %internal_vref59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not60.i = icmp eq i32 %17, 0
  br i1 %tobool.not60.i, label %for.end.thread.i.ad5064_num_vref.exit54.i_crit_edge, label %for.end.thread.i.if.end.i_crit_edge

for.end.thread.i.if.end.i_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.end.thread.i.ad5064_num_vref.exit54.i_crit_edge: ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5064_num_vref.exit54.i

ad5064_num_vref.exit54.i:                         ; preds = %for.end.thread.i.ad5064_num_vref.exit54.i_crit_edge, %for.end.i.ad5064_num_vref.exit54.i_crit_edge
  %cond.i53.i = phi i32 [ 1, %for.end.thread.i.ad5064_num_vref.exit54.i_crit_edge ], [ %10, %for.end.i.ad5064_num_vref.exit54.i_crit_edge ]
  %vref_reg3.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 2
  %call4.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef %cond.i53.i, ptr noundef %vref_reg3.i) #7
  br label %ad5064_request_vref.exit

if.end.i:                                         ; preds = %for.end.thread.i.if.end.i_crit_edge, %for.end.i.if.end.i_crit_edge
  %call5.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  %consumer.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %consumer.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i, ptr %consumer.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end13.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end13.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %call5.i to i32
  %cmp18.not.i = icmp eq ptr %call5.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp18.not.i, label %if.end20.i, label %if.end13.i.ad5064_request_vref.exit_crit_edge

if.end13.i.ad5064_request_vref.exit_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5064_request_vref.exit

if.end20.i:                                       ; preds = %if.end13.i
  %use_internal_vref.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %use_internal_vref.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %use_internal_vref.i, align 8
  %21 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip_info, align 4
  %regmap_type.i.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %regmap_type.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regmap_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cond.i56.i = icmp eq i32 %24, 1
  %..i.i = select i1 %cond.i56.i, i32 7, i32 8
  %25 = ptrtoint ptr %write3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write3, align 4
  %call.i.i.i = tail call i32 %26(ptr noundef %1, i32 noundef %..i.i, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end6_crit_edge, label %ad5064_request_vref.exit.thread75

if.end20.i.if.end6_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

ad5064_request_vref.exit.thread75:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call.i.i.i) #10
  br label %cleanup

ad5064_request_vref.exit:                         ; preds = %if.end13.i.ad5064_request_vref.exit_crit_edge, %ad5064_num_vref.exit54.i
  %retval.0.i = phi i32 [ %call4.i, %ad5064_num_vref.exit54.i ], [ %19, %if.end13.i.ad5064_request_vref.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %ad5064_request_vref.exit.if.end6_crit_edge, label %ad5064_request_vref.exit.cleanup_crit_edge

ad5064_request_vref.exit.cleanup_crit_edge:       ; preds = %ad5064_request_vref.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ad5064_request_vref.exit.if.end6_crit_edge:       ; preds = %ad5064_request_vref.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %ad5064_request_vref.exit.if.end6_crit_edge, %if.end20.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  %use_internal_vref = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %use_internal_vref to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %use_internal_vref, align 8, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not = icmp eq i8 %28, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then8:                                         ; preds = %if.end6
  %29 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip_info, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i70 = icmp eq i8 %32, 0
  br i1 %tobool.not.i70, label %cond.false.i, label %if.then8.ad5064_num_vref.exit_crit_edge

if.then8.ad5064_num_vref.exit_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5064_num_vref.exit

cond.false.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %num_channels.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_channels.i, align 4
  br label %ad5064_num_vref.exit

ad5064_num_vref.exit:                             ; preds = %cond.false.i, %if.then8.ad5064_num_vref.exit_crit_edge
  %cond.i = phi i32 [ %34, %cond.false.i ], [ 1, %if.then8.ad5064_num_vref.exit_crit_edge ]
  %vref_reg = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 2
  %call10 = tail call i32 @regulator_bulk_enable(i32 noundef %cond.i, ptr noundef %vref_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %ad5064_num_vref.exit.cleanup_crit_edge

ad5064_num_vref.exit.cleanup_crit_edge:           ; preds = %ad5064_num_vref.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %ad5064_num_vref.exit
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ad5064_bulk_reg_disable, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i71 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i71, label %if.end13.if.end18_crit_edge, label %if.then.i

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then.i:                                        ; preds = %if.end13
  %35 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip_info, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %if.then.i.devm_add_action_or_reset.exit_crit_edge

if.then.i.devm_add_action_or_reset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_add_action_or_reset.exit

cond.false.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_channels.i.i.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %num_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_channels.i.i.i, align 4
  br label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %cond.false.i.i.i, %if.then.i.devm_add_action_or_reset.exit_crit_edge
  %cond.i.i.i = phi i32 [ %40, %cond.false.i.i.i ], [ 1, %if.then.i.devm_add_action_or_reset.exit_crit_edge ]
  %call1.i.i = tail call i32 @regulator_bulk_disable(i32 noundef %cond.i.i.i, ptr noundef %vref_reg) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end13.if.end18_crit_edge, %if.end6.if.end18_crit_edge
  %name19 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %41 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %name, ptr %name19, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %42 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ad5064_info, ptr %info, align 8
  %43 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %call, align 8
  %44 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip_info, align 4
  %channels = getelementptr inbounds %struct.ad5064_chip_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %channels, align 4
  %channels21 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %48 = ptrtoint ptr %channels21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %channels21, align 8
  %49 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.ad5064_chip_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_channels, align 4
  %num_channels23 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %52 = ptrtoint ptr %num_channels23 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %num_channels23, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %47, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %realbits, align 1
  %conv = zext i8 %54 to i32
  %shl = shl nuw i32 1, %conv
  %div = sdiv i32 %shl, 2
  %55 = load ptr, ptr %chip_info, align 4
  %num_channels2780 = getelementptr inbounds %struct.ad5064_chip_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %num_channels2780 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_channels2780, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp2881.not = icmp eq i32 %57, 0
  br i1 %cmp2881.not, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %arrayidx30 = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 4, i32 %i.082
  %58 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %arrayidx30, align 1
  %arrayidx31 = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 5, i32 %i.082
  %59 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div, ptr %arrayidx31, align 4
  %inc = add nuw i32 %i.082, 1
  %60 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip_info, align 4
  %num_channels27 = getelementptr inbounds %struct.ad5064_chip_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %num_channels27 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_channels27, align 4
  %cmp28 = icmp ult i32 %inc, %63
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end18.for.end_crit_edge
  %call32 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_add_action_or_reset.exit, %ad5064_num_vref.exit.cleanup_crit_edge, %ad5064_request_vref.exit.cleanup_crit_edge, %ad5064_request_vref.exit.thread75, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %ad5064_request_vref.exit.cleanup_crit_edge ], [ %call10, %ad5064_num_vref.exit.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i.i.i, %ad5064_request_vref.exit.thread75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_i2c_write(ptr noundef %st, i32 noundef %cmd, i32 noundef %addr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %chip_info = getelementptr inbounds %struct.ad5064_state, ptr %st, i32 0, i32 1
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %regmap_type = getelementptr inbounds %struct.ad5064_chip_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regmap_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regmap_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cond = icmp eq i32 %5, 1
  %. = select i1 %cond, i32 3, i32 4
  %shl = shl i32 %cmd, %.
  %or = or i32 %shl, %addr
  %conv = trunc i32 %or to i8
  %data = getelementptr inbounds %struct.ad5064_state, ptr %st, i32 0, i32 10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %data, align 128
  %conv1 = trunc i32 %val to i16
  %arrayidx3 = getelementptr [3 x i8], ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %conv1, ptr %arrayidx3, align 1
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef %data, i32 noundef 3, i16 noundef zeroext 0) #7
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad5064_bulk_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_info.i = getelementptr inbounds %struct.ad5064_state, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_info.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.ad5064_num_vref.exit_crit_edge

entry.ad5064_num_vref.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5064_num_vref.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num_channels.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels.i, align 4
  br label %ad5064_num_vref.exit

ad5064_num_vref.exit:                             ; preds = %cond.false.i, %entry.ad5064_num_vref.exit_crit_edge
  %cond.i = phi i32 [ %5, %cond.false.i ], [ 1, %entry.ad5064_num_vref.exit_crit_edge ]
  %vref_reg = getelementptr inbounds %struct.ad5064_state, ptr %data, i32 0, i32 2
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef %cond.i, ptr noundef %vref_reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_read_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !113
  %6 = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %6) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_write_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %pwr_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_down) #7
  %2 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %pwr_down, align 1, !annotation !114
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %pwr_down) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %3 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwr_down, align 1, !range !113
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 3, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %arrayidx, align 1
  %chip_info.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info.i, align 4
  %regmap_type.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %regmap_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regmap_type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.else6.i [
    i32 2, label %if.then.i
    i32 1, label %if.end.if.end.i_crit_edge
  ]

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %address1.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %13 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address1.i, align 4
  br label %ad5064_sync_powerdown_mode.exit

if.else6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else6.i, %if.end.if.end.i_crit_edge
  %shift.0.i = phi i32 [ 8, %if.else6.i ], [ 4, %if.end.if.end.i_crit_edge ]
  %address7.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %15 = ptrtoint ptr %address7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %address7.i, align 4
  %shl.i = shl nuw i32 1, %16
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel, align 4
  %arrayidx.i = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 3, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge, label %if.then8.i

if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5064_sync_powerdown_mode.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 4, i32 %18
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10.i, align 1
  %conv.i = zext i8 %22 to i32
  %shl11.i = shl nuw nsw i32 %conv.i, %shift.0.i
  %or.i = or i32 %shl11.i, %shl.i
  br label %ad5064_sync_powerdown_mode.exit

ad5064_sync_powerdown_mode.exit:                  ; preds = %if.then8.i, %if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge, %if.then.i
  %val.0.i = phi i32 [ 0, %if.then.i ], [ %or.i, %if.then8.i ], [ %shl.i, %if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge ]
  %address.0.i = phi i32 [ %14, %if.then.i ], [ 0, %if.then8.i ], [ 0, %if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge ]
  %write.i.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i, align 4
  %call.i.i = call i32 %24(ptr noundef %1, i32 noundef 4, i32 noundef %address.0.i, i32 noundef %val.0.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  %len.call4 = select i1 %tobool6.not, i32 %len, i32 %call.i.i
  br label %cleanup

cleanup:                                          ; preds = %ad5064_sync_powerdown_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call4, %ad5064_sync_powerdown_mode.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_down) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_set_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = trunc i32 %mode to i8
  %conv = add i8 %2, 1
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 4, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %chip_info.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i, align 4
  %regmap_type.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %regmap_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regmap_type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %9, label %if.else6.i [
    i32 2, label %if.then.i
    i32 1, label %entry.if.end.i_crit_edge
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %address1.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %11 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address1.i, align 4
  br label %ad5064_sync_powerdown_mode.exit

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else6.i, %entry.if.end.i_crit_edge
  %shift.0.i = phi i32 [ 8, %if.else6.i ], [ 4, %entry.if.end.i_crit_edge ]
  %address7.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %13 = ptrtoint ptr %address7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address7.i, align 4
  %shl.i = shl nuw i32 1, %14
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel, align 4
  %arrayidx.i = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 3, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge, label %if.then8.i

if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5064_sync_powerdown_mode.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 4, i32 %16
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10.i, align 1
  %conv.i = zext i8 %20 to i32
  %shl11.i = shl nuw nsw i32 %conv.i, %shift.0.i
  %or.i = or i32 %shl11.i, %shl.i
  br label %ad5064_sync_powerdown_mode.exit

ad5064_sync_powerdown_mode.exit:                  ; preds = %if.then8.i, %if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge, %if.then.i
  %val.0.i = phi i32 [ 0, %if.then.i ], [ %or.i, %if.then8.i ], [ %shl.i, %if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge ]
  %address.0.i = phi i32 [ %12, %if.then.i ], [ 0, %if.then8.i ], [ 0, %if.end.i.ad5064_sync_powerdown_mode.exit_crit_edge ]
  %write.i.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %1, i32 noundef 4, i32 noundef %address.0.i, i32 noundef %val.0.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5064_get_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -1
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 5, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %use_internal_vref.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %use_internal_vref.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_internal_vref.i, align 8, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %chip_info1.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %chip_info1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_info1.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %internal_vref.i = getelementptr inbounds %struct.ad5064_chip_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %internal_vref.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %internal_vref.i, align 4
  br label %ad5064_get_vref.exit

if.end.i:                                         ; preds = %sw.bb1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %11, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i = icmp eq i8 %15, 0
  br i1 %tobool2.not.i, label %cond.false.i, label %if.end.i.cond.end.i_crit_edge

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %17, %cond.false.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %consumer.i = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 2, i32 %cond.i, i32 1
  %18 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %consumer.i, align 4
  %call.i = tail call i32 @regulator_get_voltage(ptr noundef %19) #7
  br label %ad5064_get_vref.exit

ad5064_get_vref.exit:                             ; preds = %cond.end.i, %if.then.i
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ %call.i, %cond.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ad5064_get_vref.exit.cleanup_crit_edge, label %if.end

ad5064_get_vref.exit.cleanup_crit_edge:           ; preds = %ad5064_get_vref.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ad5064_get_vref.exit
  call void @__sanitizer_cov_trace_pc() #9
  %div10 = udiv i32 %retval.0.i, 1000
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div10, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %realbits, align 1
  %conv = zext i8 %22 to i32
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ad5064_get_vref.exit.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end ], [ 1, %sw.bb ], [ %retval.0.i, %ad5064_get_vref.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp.not = icmp sle i32 %shl, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 1
  %conv5 = zext i8 %7 to i32
  %shl.i = shl i32 %val, %conv5
  %write.i = getelementptr inbounds %struct.ad5064_state, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 3, i32 noundef %5, i32 noundef %shl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp eq i32 %call.i, 0
  br i1 %cmp7, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad5064_state, ptr %1, i32 0, i32 5, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %val, ptr %arrayidx, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ %call.i, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call1 = tail call fastcc i32 @ad5064_probe(ptr noundef %spi, i32 noundef %1, ptr noundef %call, ptr noundef nonnull @ad5064_spi_write)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5064_spi_write(ptr noundef %st, i32 noundef %cmd, i32 noundef %addr, i32 noundef %val) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %shl = shl i32 %cmd, 24
  %shl1 = shl i32 %addr, 20
  %or = or i32 %shl1, %shl
  %or2 = or i32 %or, %val
  %data = getelementptr inbounds %struct.ad5064_state, ptr %st, i32 0, i32 10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or2, ptr %data, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %3 = getelementptr inbounds i8, ptr %t.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_ad5064__290_1096_ad5064_init6, !1, !"__initcall__kmod_ad5064__290_1096_ad5064_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5064.c", i32 1096, i32 1}
!2 = !{ptr @__exitcall_ad5064_exit, !3, !"__exitcall_ad5064_exit", i1 false, i1 false}
!3 = !{!"../drivers/iio/dac/ad5064.c", i32 1103, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/iio/dac/ad5064.c", i32 1105, i32 1}
!6 = !{ptr @__UNIQUE_ID_description292, !7, !"__UNIQUE_ID_description292", i1 false, i1 false}
!7 = !{!"../drivers/iio/dac/ad5064.c", i32 1106, i32 1}
!8 = !{ptr @__UNIQUE_ID_file293, !9, !"__UNIQUE_ID_file293", i1 false, i1 false}
!9 = !{!"../drivers/iio/dac/ad5064.c", i32 1107, i32 1}
!10 = !{ptr @__UNIQUE_ID_license294, !9, !"__UNIQUE_ID_license294", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/dac/ad5064.c", i32 1057, i32 14}
!13 = !{ptr @ad5064_i2c_driver, !14, !"ad5064_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/iio/dac/ad5064.c", i32 1055, i32 26}
!15 = !{ptr @ad5064_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/iio/dac/ad5064.c", i32 867, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ad5064_chip_info_tbl, !19, !"ad5064_chip_info_tbl", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/ad5064.c", i32 460, i32 38}
!20 = !{ptr @ad5024_channels, !21, !"ad5024_channels", i1 false, i1 false}
!21 = !{!"../drivers/iio/dac/ad5064.c", i32 431, i32 8}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/dac/ad5064.c", i32 374, i32 11}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/dac/ad5064.c", i32 379, i32 2}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/dac/ad5064.c", i32 380, i32 2}
!28 = !{ptr @ad5064_ext_info, !29, !"ad5064_ext_info", i1 false, i1 false}
!29 = !{!"../drivers/iio/dac/ad5064.c", i32 372, i32 44}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/ad5064.c", i32 280, i32 25}
!32 = !{ptr @ad5064_powerdown_mode_enum, !33, !"ad5064_powerdown_mode_enum", i1 false, i1 false}
!33 = !{!"../drivers/iio/dac/ad5064.c", i32 261, i32 30}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/dac/ad5064.c", i32 229, i32 2}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/dac/ad5064.c", i32 230, i32 2}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/dac/ad5064.c", i32 231, i32 2}
!40 = !{ptr @ad5064_powerdown_modes, !41, !"ad5064_powerdown_modes", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/ad5064.c", i32 228, i32 27}
!42 = !{ptr @ad5025_channels, !43, !"ad5025_channels", i1 false, i1 false}
!43 = !{!"../drivers/iio/dac/ad5064.c", i32 435, i32 8}
!44 = !{ptr @ad5044_channels, !45, !"ad5044_channels", i1 false, i1 false}
!45 = !{!"../drivers/iio/dac/ad5064.c", i32 432, i32 8}
!46 = !{ptr @ad5045_channels, !47, !"ad5045_channels", i1 false, i1 false}
!47 = !{!"../drivers/iio/dac/ad5064.c", i32 436, i32 8}
!48 = !{ptr @ad5064_channels, !49, !"ad5064_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/dac/ad5064.c", i32 433, i32 8}
!50 = !{ptr @ad5065_channels, !51, !"ad5065_channels", i1 false, i1 false}
!51 = !{!"../drivers/iio/dac/ad5064.c", i32 437, i32 8}
!52 = !{ptr @ad5629_channels, !53, !"ad5629_channels", i1 false, i1 false}
!53 = !{!"../drivers/iio/dac/ad5064.c", i32 439, i32 8}
!54 = !{ptr @ad5645_channels, !55, !"ad5645_channels", i1 false, i1 false}
!55 = !{!"../drivers/iio/dac/ad5064.c", i32 440, i32 8}
!56 = !{ptr @ad5669_channels, !57, !"ad5669_channels", i1 false, i1 false}
!57 = !{!"../drivers/iio/dac/ad5064.c", i32 441, i32 8}
!58 = !{ptr @ltc2607_channels, !59, !"ltc2607_channels", i1 false, i1 false}
!59 = !{!"../drivers/iio/dac/ad5064.c", i32 443, i32 8}
!60 = !{ptr @ltc2617_ext_info, !61, !"ltc2617_ext_info", i1 false, i1 false}
!61 = !{!"../drivers/iio/dac/ad5064.c", i32 384, i32 44}
!62 = !{ptr @ltc2617_powerdown_mode_enum, !63, !"ltc2617_powerdown_mode_enum", i1 false, i1 false}
!63 = !{!"../drivers/iio/dac/ad5064.c", i32 268, i32 30}
!64 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/dac/ad5064.c", i32 235, i32 2}
!66 = !{ptr @ltc2617_powerdown_modes, !67, !"ltc2617_powerdown_modes", i1 false, i1 false}
!67 = !{!"../drivers/iio/dac/ad5064.c", i32 234, i32 27}
!68 = !{ptr @ltc2617_channels, !69, !"ltc2617_channels", i1 false, i1 false}
!69 = !{!"../drivers/iio/dac/ad5064.c", i32 444, i32 8}
!70 = !{ptr @ltc2627_channels, !71, !"ltc2627_channels", i1 false, i1 false}
!71 = !{!"../drivers/iio/dac/ad5064.c", i32 445, i32 8}
!72 = !{ptr @ltc2631_10_channels, !73, !"ltc2631_10_channels", i1 false, i1 false}
!73 = !{!"../drivers/iio/dac/ad5064.c", i32 447, i32 8}
!74 = !{ptr @ltc2631_8_channels, !75, !"ltc2631_8_channels", i1 false, i1 false}
!75 = !{!"../drivers/iio/dac/ad5064.c", i32 448, i32 8}
!76 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/dac/ad5064.c", i32 829, i32 62}
!78 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/dac/ad5064.c", i32 841, i32 3}
!80 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ad5064_request_vref._entry, !79, !"_entry", i1 false, i1 false}
!85 = !{ptr @ad5064_request_vref._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/dac/ad5064.c", i32 784, i32 2}
!88 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/dac/ad5064.c", i32 785, i32 2}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/dac/ad5064.c", i32 786, i32 2}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/dac/ad5064.c", i32 787, i32 2}
!94 = !{ptr @ad5064_vref_names, !95, !"ad5064_vref_names", i1 false, i1 false}
!95 = !{!"../drivers/iio/dac/ad5064.c", i32 783, i32 27}
!96 = !{ptr @ad5064_info, !97, !"ad5064_info", i1 false, i1 false}
!97 = !{!"../drivers/iio/dac/ad5064.c", i32 367, i32 30}
!98 = !{ptr @ad5064_i2c_ids, !99, !"ad5064_i2c_ids", i1 false, i1 false}
!99 = !{!"../drivers/iio/dac/ad5064.c", i32 1003, i32 35}
!100 = !{ptr @ad5064_spi_driver, !101, !"ad5064_spi_driver", i1 false, i1 false}
!101 = !{!"../drivers/iio/dac/ad5064.c", i32 943, i32 26}
!102 = !{ptr @ad5064_spi_ids, !103, !"ad5064_spi_ids", i1 false, i1 false}
!103 = !{!"../drivers/iio/dac/ad5064.c", i32 922, i32 35}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i8 0, i8 2}
!114 = !{!"auto-init"}
