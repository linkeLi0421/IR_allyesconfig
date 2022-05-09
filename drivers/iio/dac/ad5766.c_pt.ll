; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5766.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5766.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ad5766_chip_info = type { i32, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.ad5766_span_tbl = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.ad5766_state = type { ptr, %struct.mutex, ptr, ptr, i32, i16, i16, i32, i32, [8 x i8], [3 x %union.anon.72], [116 x i8] }
%union.anon.72 = type { i32 }

@__initcall__kmod_ad5766__274_670_ad5766_driver_init6 = internal global ptr @ad5766_driver_init, section ".initcall6.init", align 4
@ad5766_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5766_spi_ids, ptr @ad5766_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad5766_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5766_driver_exit = internal global ptr @ad5766_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author275 = internal constant [71 x i8] c"ad5766.author=Denis-Gabriel Gheorghescu <denis.gheorghescu@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [53 x i8] c"ad5766.description=Analog Devices AD5766/AD5767 DACs\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [35 x i8] c"ad5766.file=drivers/iio/dac/ad5766\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [22 x i8] c"ad5766.license=GPL v2\00", section ".modinfo", align 1
@ad5766_spi_ids = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5766\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5767\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5766\00", [25 x i8] zeroinitializer }, align 32
@ad5766_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5766\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5767\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ad5766_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad5766_chip_infos = internal constant { [2 x %struct.ad5766_chip_info], [16 x i8] } { [2 x %struct.ad5766_chip_info] [%struct.ad5766_chip_info { i32 16, ptr @ad5766_channels }, %struct.ad5766_chip_info { i32 16, ptr @ad5767_channels }], [16 x i8] zeroinitializer }, align 32
@ad5766_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5766_read_raw, ptr null, ptr null, ptr @ad5766_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ad5766_channels = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }], [352 x i8] zeroinitializer }, align 32
@ad5767_channels = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.71 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5766_ext_info, ptr null, ptr null, i8 96 }], [352 x i8] zeroinitializer }, align 32
@ad5766_ext_info = internal constant { [6 x %struct.iio_chan_spec_ext_info], [40 x i8] } { [6 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.3, i32 0, ptr @ad5766_read_ext, ptr @ad5766_write_ext, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.4, i32 0, ptr @ad5766_read_ext, ptr @ad5766_write_ext, i32 1 }, %struct.iio_chan_spec_ext_info { ptr @.str.5, i32 0, ptr @ad5766_read_ext, ptr @ad5766_write_ext, i32 2 }, %struct.iio_chan_spec_ext_info { ptr @.str.6, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ad5766_dither_scale_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.7, i32 0, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ad5766_dither_scale_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dither_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dither_invert\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dither_source\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dither_scale\00", [19 x i8] zeroinitializer }, align 32
@ad5766_dither_scale_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ad5766_dither_scales, i32 4, ptr @ad5766_set_dither_scale, ptr @ad5766_get_dither_scale }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dither_scale_available\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ad5766_dither_scales = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.75\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.5\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.25\00", [27 x i8] zeroinitializer }, align 32
@ad5766_span_tbl = internal constant { [8 x %struct.ad5766_span_tbl], [32 x i8] } { [8 x %struct.ad5766_span_tbl] [%struct.ad5766_span_tbl { i32 -20, i32 0 }, %struct.ad5766_span_tbl { i32 -16, i32 0 }, %struct.ad5766_span_tbl { i32 -10, i32 0 }, %struct.ad5766_span_tbl { i32 -12, i32 14 }, %struct.ad5766_span_tbl { i32 -16, i32 10 }, %struct.ad5766_span_tbl { i32 -10, i32 6 }, %struct.ad5766_span_tbl { i32 -5, i32 5 }, %struct.ad5766_span_tbl { i32 -10, i32 10 }], [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"output-range-microvolts\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"ad5766_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 662, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"ad5766_spi_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 655, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 664, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"ad5766_dt_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 648, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 615, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"ad5766_chip_infos\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 485, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"ad5766_info\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 282, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 627, i32 58 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"ad5766_channels\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 482, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"ad5767_channels\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 483, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"ad5766_ext_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 429, i32 44 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 431, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 433, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 435, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 437, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"ad5766_dither_scale_enum\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 352, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 438, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 368, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 376, i32 23 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"ad5766_dither_scales\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 85, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 86, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 87, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 88, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 89, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"ad5766_span_tbl\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 134, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [28 x i8] c"../drivers/iio/dac/ad5766.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 501, i32 11 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_ad5766_driver_exit, ptr @__initcall__kmod_ad5766__274_670_ad5766_driver_init6, ptr @ad5766_driver_exit, ptr @ad5766_driver, ptr @ad5766_spi_ids, ptr @.str, ptr @ad5766_dt_match, ptr @ad5766_probe.__key, ptr @.str.1, ptr @ad5766_chip_infos, ptr @ad5766_info, ptr @.str.2, ptr @ad5766_channels, ptr @ad5767_channels, ptr @ad5766_ext_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad5766_dither_scale_enum, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ad5766_dither_scales, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ad5766_span_tbl, ptr @.str.14], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_spi_ids to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_chip_infos to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_channels to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5767_channels to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_ext_info to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_dither_scale_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_dither_scales to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5766_span_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5766_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5766_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5766_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5766_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5766_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i151.i = alloca %struct.spi_message, align 4
  %t.i.i152.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %tmp.i.i = alloca [2 x i32], align 4
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5766_probe.__key) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.ad5766_chip_info], ptr @ad5766_chip_infos, i32 0, i32 %4
  %chip_info = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %chip_info, align 32
  %channels = getelementptr [2 x %struct.ad5766_chip_info], ptr @ad5766_chip_infos, i32 0, i32 %4, i32 1
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 4
  %channels5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %channels5, align 8
  %9 = load ptr, ptr %chip_info, align 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %num_channels7 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_channels7, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ad5766_info, ptr %info, align 8
  %call8 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %name9 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %name9, align 8
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %call12 = tail call ptr @devm_gpiod_get_optional(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef 3) #7
  %gpio_reset = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call12, ptr %gpio_reset, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %tobool.not.i.i = icmp eq ptr %call12, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call12, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #7
  %21 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %22, i32 noundef 0) #7
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.end18
  %data1.i.i.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %data1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 112, ptr %data1.i.i.i, align 128
  %arrayidx5.i.i.i = getelementptr [4 x i8], ptr %data1.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 4660, ptr %arrayidx5.i.i.i, align 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  %27 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 92)
  %29 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data1.i.i.i, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  %31 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 40)
  %33 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %if.else.i.i.__ad5766_spi_write.exit.i.i_crit_edge

if.else.i.i.__ad5766_spi_write.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ad5766_spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %__ad5766_spi_write.exit.i.i

__ad5766_spi_write.exit.i.i:                      ; preds = %if.end.i.i.i.i.i.i.i.i.i, %if.else.i.i.__ad5766_spi_write.exit.i.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %26, ptr noundef nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %__ad5766_spi_write.exit.i.i.cleanup_crit_edge, label %__ad5766_spi_write.exit.i.i.if.end.i_crit_edge

__ad5766_spi_write.exit.i.i.if.end.i_crit_edge:   ; preds = %__ad5766_spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

__ad5766_spi_write.exit.i.i.cleanup_crit_edge:    ; preds = %__ad5766_spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %__ad5766_spi_write.exit.i.i.if.end.i_crit_edge, %if.then.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #7
  %42 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !72
  %43 = getelementptr inbounds [2 x i32], ptr %tmp.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %43, align 4, !annotation !72
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 128
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %46, ptr noundef nonnull @.str.14, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i149.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i149.i, label %if.end.i.i, label %if.end.i.ad5766_get_output_range.exit.thread.i_crit_edge

if.end.i.ad5766_get_output_range.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_get_output_range.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %47 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmp.i.i, align 4
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %43, align 4
  %.off.i.i = add i32 %48, 20999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off.i.i)
  %51 = icmp ult i32 %.off.i.i, 1000000
  br i1 %51, label %lor.lhs.false.i.i, label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %.off36.i.i = add i32 %50, 999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999999, i32 %.off36.i.i)
  %52 = icmp ult i32 %.off36.i.i, 1999999
  br i1 %52, label %lor.lhs.false.i.i.if.end4.i_crit_edge, label %lor.lhs.false.i.i.ad5766_get_output_range.exit.thread.i_crit_edge

lor.lhs.false.i.i.ad5766_get_output_range.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_get_output_range.exit.thread.i

lor.lhs.false.i.i.if.end4.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.i.i:                                      ; preds = %if.end.i.i
  %.off25.i.i = add i32 %48, 16999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off25.i.i)
  %53 = icmp ult i32 %.off25.i.i, 1000000
  br i1 %53, label %lor.lhs.false.1.i.i, label %for.inc.1.i.i

lor.lhs.false.1.i.i:                              ; preds = %for.inc.i.i
  %.off35.i.i = add i32 %50, 999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999999, i32 %.off35.i.i)
  %54 = icmp ult i32 %.off35.i.i, 1999999
  br i1 %54, label %lor.lhs.false.1.i.i.if.end4.i_crit_edge, label %lor.lhs.false.4.i.i

lor.lhs.false.1.i.i.if.end4.i_crit_edge:          ; preds = %lor.lhs.false.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %.off26.i.i = add i32 %48, 10999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off26.i.i)
  %55 = icmp ult i32 %.off26.i.i, 1000000
  br i1 %55, label %lor.lhs.false.2.i.i, label %for.inc.2.i.i

lor.lhs.false.2.i.i:                              ; preds = %for.inc.1.i.i
  %.off34.i.i = add i32 %50, 999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999999, i32 %.off34.i.i)
  %56 = icmp ult i32 %.off34.i.i, 1999999
  br i1 %56, label %lor.lhs.false.2.i.i.if.end4.i_crit_edge, label %lor.lhs.false.5.i.i

lor.lhs.false.2.i.i.if.end4.i_crit_edge:          ; preds = %lor.lhs.false.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %.off27.i.i = add i32 %48, 12999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off27.i.i)
  %57 = icmp ult i32 %.off27.i.i, 1000000
  br i1 %57, label %lor.lhs.false.3.i.i, label %for.inc.5.i.i

lor.lhs.false.3.i.i:                              ; preds = %for.inc.2.i.i
  %.off33.i.i = add i32 %50, -14000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off33.i.i)
  %58 = icmp ult i32 %.off33.i.i, 1000000
  br i1 %58, label %lor.lhs.false.3.i.i.if.end4.i_crit_edge, label %lor.lhs.false.3.i.i.ad5766_get_output_range.exit.thread.i_crit_edge

lor.lhs.false.3.i.i.ad5766_get_output_range.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_get_output_range.exit.thread.i

lor.lhs.false.3.i.i.if.end4.i_crit_edge:          ; preds = %lor.lhs.false.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

lor.lhs.false.4.i.i:                              ; preds = %lor.lhs.false.1.i.i
  %.off32.i.i = add i32 %50, -10000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off32.i.i)
  %59 = icmp ult i32 %.off32.i.i, 1000000
  br i1 %59, label %lor.lhs.false.4.i.i.if.end4.i_crit_edge, label %lor.lhs.false.4.i.i.ad5766_get_output_range.exit.thread.i_crit_edge

lor.lhs.false.4.i.i.ad5766_get_output_range.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_get_output_range.exit.thread.i

lor.lhs.false.4.i.i.if.end4.i_crit_edge:          ; preds = %lor.lhs.false.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

lor.lhs.false.5.i.i:                              ; preds = %lor.lhs.false.2.i.i
  %.off31.i.i = add i32 %50, -6000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off31.i.i)
  %60 = icmp ult i32 %.off31.i.i, 1000000
  br i1 %60, label %lor.lhs.false.5.i.i.if.end4.i_crit_edge, label %lor.lhs.false.7.i.i

lor.lhs.false.5.i.i.if.end4.i_crit_edge:          ; preds = %lor.lhs.false.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc.5.i.i:                                    ; preds = %for.inc.2.i.i
  %.off28.i.i = add i32 %48, 5999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off28.i.i)
  %61 = icmp ult i32 %.off28.i.i, 1000000
  %.off30.i.i = add i32 %50, -5000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off30.i.i)
  %62 = icmp ult i32 %.off30.i.i, 1000000
  %or.cond.i.i = select i1 %61, i1 %62, i1 false
  br i1 %or.cond.i.i, label %for.inc.5.i.i.if.end4.i_crit_edge, label %for.inc.5.i.i.ad5766_get_output_range.exit.thread.i_crit_edge

for.inc.5.i.i.ad5766_get_output_range.exit.thread.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_get_output_range.exit.thread.i

for.inc.5.i.i.if.end4.i_crit_edge:                ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

lor.lhs.false.7.i.i:                              ; preds = %lor.lhs.false.5.i.i
  %.off29.i.i = add i32 %50, -10000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.off29.i.i)
  %63 = icmp ult i32 %.off29.i.i, 1000000
  br i1 %63, label %lor.lhs.false.7.i.i.if.end4.i_crit_edge, label %lor.lhs.false.7.i.i.ad5766_get_output_range.exit.thread.i_crit_edge

lor.lhs.false.7.i.i.ad5766_get_output_range.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_get_output_range.exit.thread.i

lor.lhs.false.7.i.i.if.end4.i_crit_edge:          ; preds = %lor.lhs.false.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

ad5766_get_output_range.exit.thread.i:            ; preds = %lor.lhs.false.7.i.i.ad5766_get_output_range.exit.thread.i_crit_edge, %for.inc.5.i.i.ad5766_get_output_range.exit.thread.i_crit_edge, %lor.lhs.false.4.i.i.ad5766_get_output_range.exit.thread.i_crit_edge, %lor.lhs.false.3.i.i.ad5766_get_output_range.exit.thread.i_crit_edge, %lor.lhs.false.i.i.ad5766_get_output_range.exit.thread.i_crit_edge, %if.end.i.ad5766_get_output_range.exit.thread.i_crit_edge
  %retval.0.i150.ph.i = phi i32 [ -22, %lor.lhs.false.4.i.i.ad5766_get_output_range.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.i.ad5766_get_output_range.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false.3.i.i.ad5766_get_output_range.exit.thread.i_crit_edge ], [ -22, %for.inc.5.i.i.ad5766_get_output_range.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false.7.i.i.ad5766_get_output_range.exit.thread.i_crit_edge ], [ %call.i.i, %if.end.i.ad5766_get_output_range.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #7
  br label %cleanup

if.end4.i:                                        ; preds = %lor.lhs.false.7.i.i.if.end4.i_crit_edge, %for.inc.5.i.i.if.end4.i_crit_edge, %lor.lhs.false.5.i.i.if.end4.i_crit_edge, %lor.lhs.false.4.i.i.if.end4.i_crit_edge, %lor.lhs.false.3.i.i.if.end4.i_crit_edge, %lor.lhs.false.2.i.i.if.end4.i_crit_edge, %lor.lhs.false.1.i.i.if.end4.i_crit_edge, %lor.lhs.false.i.i.if.end4.i_crit_edge
  %i.022.lcssa.i.i = phi i32 [ 0, %lor.lhs.false.i.i.if.end4.i_crit_edge ], [ 1, %lor.lhs.false.1.i.i.if.end4.i_crit_edge ], [ 2, %lor.lhs.false.2.i.i.if.end4.i_crit_edge ], [ 3, %lor.lhs.false.3.i.i.if.end4.i_crit_edge ], [ 4, %lor.lhs.false.4.i.i.if.end4.i_crit_edge ], [ 5, %lor.lhs.false.5.i.i.if.end4.i_crit_edge ], [ 7, %lor.lhs.false.7.i.i.if.end4.i_crit_edge ], [ 6, %for.inc.5.i.i.if.end4.i_crit_edge ]
  %crt_range.i.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %crt_range.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.022.lcssa.i.i, ptr %crt_range.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #7
  %dither_enable.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %dither_enable.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %dither_enable.i, align 4
  %data1.i.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 10
  %66 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 81, ptr %data1.i.i, align 128
  %arrayidx5.i.i = getelementptr [4 x i8], ptr %data1.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 -1, ptr %arrayidx5.i.i, align 1
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %70 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %71 = call ptr @memset(ptr %70, i32 0, i32 92)
  %72 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %data1.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %74 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %75 = call ptr @memset(ptr %74, i32 0, i32 40)
  %76 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %78 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %79 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end4.i.__ad5766_spi_write.exit.i_crit_edge

if.end4.i.__ad5766_spi_write.exit.i_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ad5766_spi_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %81 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %83 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %__ad5766_spi_write.exit.i

__ad5766_spi_write.exit.i:                        ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end4.i.__ad5766_spi_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %69, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %__ad5766_spi_write.exit.i.cleanup_crit_edge

__ad5766_spi_write.exit.i.cleanup_crit_edge:      ; preds = %__ad5766_spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %__ad5766_spi_write.exit.i
  %dither_source.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 7
  %84 = ptrtoint ptr %dither_source.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1431655765, ptr %dither_source.i, align 16
  %85 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -112, ptr %data1.i.i, align 128
  %86 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 21845, ptr %arrayidx5.i.i, align 1
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i152.i) #7
  %89 = getelementptr inbounds i8, ptr %t.i.i152.i, i32 4
  %90 = call ptr @memset(ptr %89, i32 0, i32 92)
  %91 = ptrtoint ptr %t.i.i152.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %data1.i.i, ptr %t.i.i152.i, align 4
  %len1.i.i155.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i152.i, i32 0, i32 2
  %92 = ptrtoint ptr %len1.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %len1.i.i155.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i151.i) #7
  %93 = getelementptr inbounds i8, ptr %msg.i.i.i151.i, i32 8
  %94 = call ptr @memset(ptr %93, i32 0, i32 40)
  %95 = ptrtoint ptr %msg.i.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %msg.i.i.i151.i, ptr %msg.i.i.i151.i, align 4
  %prev.i.i.i.i.i.i.i156.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i151.i, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i.i.i.i.i.i156.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %msg.i.i.i151.i, ptr %prev.i.i.i.i.i.i.i156.i, align 4
  %resources.i.i.i.i.i.i157.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i151.i, i32 0, i32 10
  %97 = ptrtoint ptr %resources.i.i.i.i.i.i157.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %resources.i.i.i.i.i.i157.i, ptr %resources.i.i.i.i.i.i157.i, align 4
  %prev.i2.i.i.i.i.i.i158.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i151.i, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %prev.i2.i.i.i.i.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %resources.i.i.i.i.i.i157.i, ptr %prev.i2.i.i.i.i.i.i158.i, align 4
  %transfer_list.i.i.i.i.i159.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i152.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i160.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i159.i, ptr noundef nonnull %msg.i.i.i151.i, ptr noundef nonnull %msg.i.i.i151.i) #7
  br i1 %call.i.i.i.i.i.i.i160.i, label %if.end.i.i.i.i.i.i.i162.i, label %if.end9.i.__ad5766_spi_write.exit164.i_crit_edge

if.end9.i.__ad5766_spi_write.exit164.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ad5766_spi_write.exit164.i

if.end.i.i.i.i.i.i.i162.i:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %prev.i.i.i.i.i.i.i156.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %transfer_list.i.i.i.i.i159.i, ptr %prev.i.i.i.i.i.i.i156.i, align 4
  %100 = ptrtoint ptr %transfer_list.i.i.i.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %msg.i.i.i151.i, ptr %transfer_list.i.i.i.i.i159.i, align 4
  %prev3.i.i.i.i.i.i.i161.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i152.i, i32 0, i32 18, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i.i.i.i161.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %msg.i.i.i151.i, ptr %prev3.i.i.i.i.i.i.i161.i, align 4
  %102 = ptrtoint ptr %msg.i.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %transfer_list.i.i.i.i.i159.i, ptr %msg.i.i.i151.i, align 4
  br label %__ad5766_spi_write.exit164.i

__ad5766_spi_write.exit164.i:                     ; preds = %if.end.i.i.i.i.i.i.i162.i, %if.end9.i.__ad5766_spi_write.exit164.i_crit_edge
  %call.i.i.i163.i = call i32 @spi_sync(ptr noundef %88, ptr noundef nonnull %msg.i.i.i151.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i151.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i152.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i163.i)
  %tobool25.not.i = icmp eq i32 %call.i.i.i163.i, 0
  br i1 %tobool25.not.i, label %do.end42.i, label %__ad5766_spi_write.exit164.i.cleanup_crit_edge

__ad5766_spi_write.exit164.i.cleanup_crit_edge:   ; preds = %__ad5766_spi_write.exit164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end42.i:                                       ; preds = %__ad5766_spi_write.exit164.i
  %103 = ptrtoint ptr %dither_source.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dither_source.i, align 16
  %shr46.i = lshr i32 %104, 16
  %conv47.i = trunc i32 %shr46.i to i16
  %call48.i = call fastcc i32 @__ad5766_spi_write(ptr noundef %1, i8 noundef zeroext -96, i16 noundef zeroext %conv47.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %do.end42.i.cleanup_crit_edge

do.end42.i.cleanup_crit_edge:                     ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51.i:                                       ; preds = %do.end42.i
  %dither_scale.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 8
  %105 = ptrtoint ptr %dither_scale.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %dither_scale.i, align 4
  %call72.i = call fastcc i32 @__ad5766_spi_write(ptr noundef %1, i8 noundef zeroext -64, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %do.end90.i, label %if.end51.i.cleanup_crit_edge

if.end51.i.cleanup_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end90.i:                                       ; preds = %if.end51.i
  %106 = ptrtoint ptr %dither_scale.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dither_scale.i, align 4
  %shr94.i = lshr i32 %107, 16
  %conv95.i = trunc i32 %shr94.i to i16
  %call96.i = call fastcc i32 @__ad5766_spi_write(ptr noundef %1, i8 noundef zeroext -48, i16 noundef zeroext %conv95.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.end99.i, label %do.end90.i.cleanup_crit_edge

do.end90.i.cleanup_crit_edge:                     ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end99.i:                                       ; preds = %do.end90.i
  %dither_invert.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 6
  %108 = ptrtoint ptr %dither_invert.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %dither_invert.i, align 2
  %call101.i = call fastcc i32 @__ad5766_spi_write(ptr noundef %1, i8 noundef zeroext -80, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %ad5766_default_setup.exit, label %if.end99.i.cleanup_crit_edge

if.end99.i.cleanup_crit_edge:                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ad5766_default_setup.exit:                        ; preds = %if.end99.i
  %109 = ptrtoint ptr %crt_range.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %crt_range.i.i, align 8
  %conv105.i = trunc i32 %110 to i16
  %call106.i = call fastcc i32 @__ad5766_spi_write(ptr noundef %1, i8 noundef zeroext 64, i16 noundef zeroext %conv105.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool20.not = icmp eq i32 %call106.i, 0
  br i1 %tobool20.not, label %if.end22, label %ad5766_default_setup.exit.cleanup_crit_edge

ad5766_default_setup.exit.cleanup_crit_edge:      ; preds = %ad5766_default_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %ad5766_default_setup.exit
  %call24 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ad5766_trigger_handler, i32 noundef 1, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %ad5766_default_setup.exit.cleanup_crit_edge, %if.end99.i.cleanup_crit_edge, %do.end90.i.cleanup_crit_edge, %if.end51.i.cleanup_crit_edge, %do.end42.i.cleanup_crit_edge, %__ad5766_spi_write.exit164.i.cleanup_crit_edge, %__ad5766_spi_write.exit.i.cleanup_crit_edge, %ad5766_get_output_range.exit.thread.i, %__ad5766_spi_write.exit.i.i.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then15 ], [ %call29, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %call106.i, %ad5766_default_setup.exit.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %retval.0.i150.ph.i, %ad5766_get_output_range.exit.thread.i ], [ %call.i.i.i.i.i, %__ad5766_spi_write.exit.i.i.cleanup_crit_edge ], [ %call101.i, %if.end99.i.cleanup_crit_edge ], [ %call96.i, %do.end90.i.cleanup_crit_edge ], [ %call72.i, %if.end51.i.cleanup_crit_edge ], [ %call48.i, %do.end42.i.cleanup_crit_edge ], [ %call.i.i.i163.i, %__ad5766_spi_write.exit164.i.cleanup_crit_edge ], [ %call.i.i.i.i, %__ad5766_spi_write.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5766_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %msg.i.i.i31 = alloca %struct.spi_message, align 4
  %t.i.i32 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %buffer2 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buffer2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer2, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #7
  %6 = call ptr @memset(ptr %data, i32 255, i32 32)
  %call3 = call i32 @iio_pop_from_buffer(ptr noundef %3, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ad5766_state, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_scan_mask, align 4
  %chip_info = getelementptr inbounds %struct.ad5766_state, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip_info, align 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %sub = add i32 %12, -1
  %call4 = call i32 @_find_next_bit_be(ptr noundef %8, i32 noundef %sub, i32 noundef 0) #7
  %13 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_info, align 32
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %sub745 = add i32 %16, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %sub745)
  %cmp46 = icmp ult i32 %call4, %sub745
  br i1 %cmp46, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %data1.i = getelementptr inbounds %struct.ad5766_state, ptr %5, i32 0, i32 10
  %arrayidx5.i = getelementptr [4 x i8], ptr %data1.i, i32 0, i32 1
  %17 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  br label %for.body

for.body:                                         ; preds = %__ad5766_spi_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__ad5766_spi_write.exit.for.body_crit_edge ]
  %ch.047 = phi i32 [ %call4, %for.body.lr.ph ], [ %call13, %__ad5766_spi_write.exit.for.body_crit_edge ]
  %19 = trunc i32 %ch.047 to i8
  %20 = and i8 %19, 15
  %conv = or i8 %20, 16
  %inc = add i32 %i.048, 1
  %arrayidx = getelementptr [16 x i16], ptr %data, i32 0, i32 %i.048
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %23 = ptrtoint ptr %data1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %data1.i, align 128
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %22, ptr %arrayidx5.i, align 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %27 = call ptr @memset(ptr %17, i32 0, i32 92)
  %28 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data1.i, ptr %t.i.i, align 4
  %29 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %30 = call ptr @memset(ptr %18, i32 0, i32 40)
  %31 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %for.body.__ad5766_spi_write.exit_crit_edge

for.body.__ad5766_spi_write.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ad5766_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %__ad5766_spi_write.exit

__ad5766_spi_write.exit:                          ; preds = %if.end.i.i.i.i.i.i.i, %for.body.__ad5766_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %26, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  %39 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %active_scan_mask, align 4
  %41 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_info, align 32
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %sub12 = add i32 %44, -1
  %add = add nuw i32 %ch.047, 1
  %call13 = call i32 @_find_next_bit_be(ptr noundef %40, i32 noundef %sub12, i32 noundef %add) #7
  %45 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip_info, align 32
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %sub7 = add i32 %48, -1
  %cmp = icmp ult i32 %call13, %sub7
  br i1 %cmp, label %__ad5766_spi_write.exit.for.body_crit_edge, label %__ad5766_spi_write.exit.for.end_crit_edge

__ad5766_spi_write.exit.for.end_crit_edge:        ; preds = %__ad5766_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

__ad5766_spi_write.exit.for.body_crit_edge:       ; preds = %__ad5766_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %__ad5766_spi_write.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %49 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %active_scan_mask, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %conv15 = trunc i32 %52 to i16
  %data1.i33 = getelementptr inbounds %struct.ad5766_state, ptr %5, i32 0, i32 10
  %53 = ptrtoint ptr %data1.i33 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 48, ptr %data1.i33, align 128
  %arrayidx5.i34 = getelementptr [4 x i8], ptr %data1.i33, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx5.i34 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %conv15, ptr %arrayidx5.i34, align 1
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i32) #7
  %57 = getelementptr inbounds i8, ptr %t.i.i32, i32 4
  %58 = call ptr @memset(ptr %57, i32 0, i32 92)
  %59 = ptrtoint ptr %t.i.i32 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %data1.i33, ptr %t.i.i32, align 4
  %len1.i.i35 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i32, i32 0, i32 2
  %60 = ptrtoint ptr %len1.i.i35 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %len1.i.i35, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i31) #7
  %61 = getelementptr inbounds i8, ptr %msg.i.i.i31, i32 8
  %62 = call ptr @memset(ptr %61, i32 0, i32 40)
  %63 = ptrtoint ptr %msg.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %msg.i.i.i31, ptr %msg.i.i.i31, align 4
  %prev.i.i.i.i.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i31, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i.i31, ptr %prev.i.i.i.i.i.i.i36, align 4
  %resources.i.i.i.i.i.i37 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i31, i32 0, i32 10
  %65 = ptrtoint ptr %resources.i.i.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %resources.i.i.i.i.i.i37, ptr %resources.i.i.i.i.i.i37, align 4
  %prev.i2.i.i.i.i.i.i38 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i31, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %prev.i2.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %resources.i.i.i.i.i.i37, ptr %prev.i2.i.i.i.i.i.i38, align 4
  %transfer_list.i.i.i.i.i39 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i32, i32 0, i32 18
  %call.i.i.i.i.i.i.i40 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i39, ptr noundef nonnull %msg.i.i.i31, ptr noundef nonnull %msg.i.i.i31) #7
  br i1 %call.i.i.i.i.i.i.i40, label %if.end.i.i.i.i.i.i.i42, label %for.end.__ad5766_spi_write.exit44_crit_edge

for.end.__ad5766_spi_write.exit44_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ad5766_spi_write.exit44

if.end.i.i.i.i.i.i.i42:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i.i.i.i.i39, ptr %prev.i.i.i.i.i.i.i36, align 4
  %68 = ptrtoint ptr %transfer_list.i.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i31, ptr %transfer_list.i.i.i.i.i39, align 4
  %prev3.i.i.i.i.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i32, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %msg.i.i.i31, ptr %prev3.i.i.i.i.i.i.i41, align 4
  %70 = ptrtoint ptr %msg.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i.i.i.i.i39, ptr %msg.i.i.i31, align 4
  br label %__ad5766_spi_write.exit44

__ad5766_spi_write.exit44:                        ; preds = %if.end.i.i.i.i.i.i.i42, %for.end.__ad5766_spi_write.exit44_crit_edge
  %call.i.i.i43 = call i32 @spi_sync(ptr noundef %56, ptr noundef nonnull %msg.i.i.i31) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i31) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i32) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %done

done:                                             ; preds = %__ad5766_spi_write.exit44, %entry.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %71 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %72) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5766_read_ext(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %private, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dither_enable = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %dither_enable to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dither_enable, align 4
  %conv = zext i16 %4 to i32
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %7 = xor i32 %conv, -1
  %8 = lshr i32 %7, %6
  %9 = and i32 %8, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %9)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dither_invert = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %dither_invert to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dither_invert, align 2
  %conv3 = zext i16 %11 to i32
  %channel4 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel4, align 4
  %14 = lshr i32 %conv3, %13
  %15 = and i32 %14, 1
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %15)
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dither_source.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %dither_source.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dither_source.i, align 16
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %18 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel.i, align 4
  %mul.i = shl i32 %19, 1
  %shl.neg.i = shl nsw i32 -1, %mul.i
  %sub4.i = sub i32 30, %mul.i
  %shr.i = lshr i32 -1, %sub4.i
  %and.i = and i32 %shl.neg.i, %17
  %and6.i = and i32 %and.i, %shr.i
  %shr9.i = lshr i32 %and6.i, %mul.i
  %sub10.i = add i32 %shr9.i, -1
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %sub10.i)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %sw.bb13 ], [ %call12, %sw.bb2 ], [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5766_write_ext(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i.i60.i = alloca %struct.spi_message, align 4
  %t.i.i.i61.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i50 = alloca %struct.spi_message, align 4
  %t.i.i.i51 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %readin = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %readin) #7
  %2 = ptrtoint ptr %readin to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %readin, align 1, !annotation !72
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %readin) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %private, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb28
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %5
  %dither_enable = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dither_enable to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dither_enable, align 4
  %8 = trunc i32 %shl to i16
  %9 = xor i16 %8, -1
  %conv2 = and i16 %7, %9
  store i16 %conv2, ptr %dither_enable, align 4
  %10 = ptrtoint ptr %readin to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %readin, align 1, !range !73
  %12 = xor i8 %11, 1
  %13 = zext i8 %12 to i32
  %14 = load i32, ptr %channel, align 4
  %shl5 = shl i32 %13, %14
  %15 = trunc i32 %shl5 to i16
  %conv8 = or i16 %conv2, %15
  store i16 %conv8, ptr %dither_enable, align 4
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.ad5766_state, ptr %17, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %data1.i.i = getelementptr inbounds %struct.ad5766_state, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 33, ptr %data1.i.i, align 128
  %arrayidx5.i.i = getelementptr [4 x i8], ptr %data1.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %conv8, ptr %arrayidx5.i.i, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %22 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data1.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %sw.bb.ad5766_write.exit_crit_edge

sw.bb.ad5766_write.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5766_write.exit

ad5766_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i.i, %sw.bb.ad5766_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end
  %channel12 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %36 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel12, align 4
  %shl13 = shl nuw i32 1, %37
  %dither_invert = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %dither_invert to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dither_invert, align 2
  %40 = trunc i32 %shl13 to i16
  %41 = xor i16 %40, -1
  %conv17 = and i16 %39, %41
  store i16 %conv17, ptr %dither_invert, align 2
  %42 = ptrtoint ptr %readin to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %readin, align 1, !range !73
  %44 = zext i8 %43 to i32
  %45 = load i32, ptr %channel12, align 4
  %shl21 = shl nuw i32 %44, %45
  %46 = trunc i32 %shl21 to i16
  %conv25 = or i16 %conv17, %46
  store i16 %conv25, ptr %dither_invert, align 2
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i, align 8
  %lock.i53 = getelementptr inbounds %struct.ad5766_state, ptr %48, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i53, i32 noundef 0) #7
  %data1.i.i54 = getelementptr inbounds %struct.ad5766_state, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %data1.i.i54 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 32, ptr %data1.i.i54, align 128
  %arrayidx5.i.i55 = getelementptr [4 x i8], ptr %data1.i.i54, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx5.i.i55 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %conv25, ptr %arrayidx5.i.i55, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i51) #7
  %53 = getelementptr inbounds i8, ptr %t.i.i.i51, i32 4
  %54 = call ptr @memset(ptr %53, i32 0, i32 92)
  %55 = ptrtoint ptr %t.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %data1.i.i54, ptr %t.i.i.i51, align 4
  %len1.i.i.i56 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i51, i32 0, i32 2
  %56 = ptrtoint ptr %len1.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %len1.i.i.i56, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i50) #7
  %57 = getelementptr inbounds i8, ptr %msg.i.i.i.i50, i32 8
  %58 = call ptr @memset(ptr %57, i32 0, i32 40)
  %59 = ptrtoint ptr %msg.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %msg.i.i.i.i50, ptr %msg.i.i.i.i50, align 4
  %prev.i.i.i.i.i.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i50, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i.i.i50, ptr %prev.i.i.i.i.i.i.i.i57, align 4
  %resources.i.i.i.i.i.i.i58 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i50, i32 0, i32 10
  %61 = ptrtoint ptr %resources.i.i.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %resources.i.i.i.i.i.i.i58, ptr %resources.i.i.i.i.i.i.i58, align 4
  %prev.i2.i.i.i.i.i.i.i59 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i50, i32 0, i32 10, i32 1
  %62 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %resources.i.i.i.i.i.i.i58, ptr %prev.i2.i.i.i.i.i.i.i59, align 4
  %transfer_list.i.i.i.i.i.i60 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i51, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i61 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i60, ptr noundef nonnull %msg.i.i.i.i50, ptr noundef nonnull %msg.i.i.i.i50) #7
  br i1 %call.i.i.i.i.i.i.i.i61, label %if.end.i.i.i.i.i.i.i.i63, label %sw.bb11.ad5766_write.exit65_crit_edge

sw.bb11.ad5766_write.exit65_crit_edge:            ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_write.exit65

if.end.i.i.i.i.i.i.i.i63:                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %transfer_list.i.i.i.i.i.i60, ptr %prev.i.i.i.i.i.i.i.i57, align 4
  %64 = ptrtoint ptr %transfer_list.i.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i.i.i50, ptr %transfer_list.i.i.i.i.i.i60, align 4
  %prev3.i.i.i.i.i.i.i.i62 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i51, i32 0, i32 18, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i.i.i50, ptr %prev3.i.i.i.i.i.i.i.i62, align 4
  %66 = ptrtoint ptr %msg.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %transfer_list.i.i.i.i.i.i60, ptr %msg.i.i.i.i50, align 4
  br label %ad5766_write.exit65

ad5766_write.exit65:                              ; preds = %if.end.i.i.i.i.i.i.i.i63, %sw.bb11.ad5766_write.exit65_crit_edge
  %call.i.i.i.i64 = call i32 @spi_sync(ptr noundef %52, ptr noundef nonnull %msg.i.i.i.i50) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i50) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i51) #7
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %if.end
  %67 = ptrtoint ptr %readin to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %readin, align 1, !range !73
  %69 = zext i8 %68 to i32
  %70 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv.i, align 8
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %72 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %channel.i, align 4
  %mul.i = shl i32 %73, 1
  %shl.neg.i = shl nsw i32 -1, %mul.i
  %sub4.i = sub i32 30, %mul.i
  %shr.i = lshr i32 -1, %sub4.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %neg.i = xor i32 %and.i, -1
  %dither_source.i = getelementptr inbounds %struct.ad5766_state, ptr %71, i32 0, i32 7
  %74 = ptrtoint ptr %dither_source.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dither_source.i, align 16
  %and6.i = and i32 %75, %neg.i
  store i32 %and6.i, ptr %dither_source.i, align 16
  %76 = load i32, ptr %channel.i, align 4
  %mul8.i = shl i32 %76, 1
  %add9.i = or i32 %mul8.i, %69
  %shl10.i = shl nuw i32 1, %add9.i
  %or.i = or i32 %shl10.i, %and6.i
  store i32 %or.i, ptr %dither_source.i, align 16
  %conv.i = trunc i32 %or.i to i16
  %77 = load ptr, ptr %priv.i, align 8
  %lock.i.i = getelementptr inbounds %struct.ad5766_state, ptr %77, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %data1.i.i.i = getelementptr inbounds %struct.ad5766_state, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %data1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 32, ptr %data1.i.i.i, align 128
  %arrayidx5.i.i.i = getelementptr [4 x i8], ptr %data1.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %conv.i, ptr %arrayidx5.i.i.i, align 1
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  %82 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %83 = call ptr @memset(ptr %82, i32 0, i32 92)
  %84 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %data1.i.i.i, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  %86 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %87 = call ptr @memset(ptr %86, i32 0, i32 40)
  %88 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %90 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %91 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %sw.bb28.ad5766_write.exit.i_crit_edge

sw.bb28.ad5766_write.exit.i_crit_edge:            ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_write.exit.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %93 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %ad5766_write.exit.i

ad5766_write.exit.i:                              ; preds = %if.end.i.i.i.i.i.i.i.i.i, %sw.bb28.ad5766_write.exit.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %81, ptr noundef nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %do.end42.i, label %ad5766_write.exit.i.sw.epilog_crit_edge

ad5766_write.exit.i.sw.epilog_crit_edge:          ; preds = %ad5766_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end42.i:                                       ; preds = %ad5766_write.exit.i
  %96 = ptrtoint ptr %dither_source.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dither_source.i, align 16
  %shr46.i = lshr i32 %97, 16
  %conv47.i = trunc i32 %shr46.i to i16
  %98 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv.i, align 8
  %lock.i63.i = getelementptr inbounds %struct.ad5766_state, ptr %99, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i63.i, i32 noundef 0) #7
  %data1.i.i64.i = getelementptr inbounds %struct.ad5766_state, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %data1.i.i64.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 32, ptr %data1.i.i64.i, align 128
  %arrayidx5.i.i65.i = getelementptr [4 x i8], ptr %data1.i.i64.i, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx5.i.i65.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 %conv47.i, ptr %arrayidx5.i.i65.i, align 1
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i61.i) #7
  %104 = getelementptr inbounds i8, ptr %t.i.i.i61.i, i32 4
  %105 = call ptr @memset(ptr %104, i32 0, i32 92)
  %106 = ptrtoint ptr %t.i.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %data1.i.i64.i, ptr %t.i.i.i61.i, align 4
  %len1.i.i.i66.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i61.i, i32 0, i32 2
  %107 = ptrtoint ptr %len1.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3, ptr %len1.i.i.i66.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i60.i) #7
  %108 = getelementptr inbounds i8, ptr %msg.i.i.i.i60.i, i32 8
  %109 = call ptr @memset(ptr %108, i32 0, i32 40)
  %110 = ptrtoint ptr %msg.i.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %msg.i.i.i.i60.i, ptr %msg.i.i.i.i60.i, align 4
  %prev.i.i.i.i.i.i.i.i67.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i60.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %msg.i.i.i.i60.i, ptr %prev.i.i.i.i.i.i.i.i67.i, align 4
  %resources.i.i.i.i.i.i.i68.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i60.i, i32 0, i32 10
  %112 = ptrtoint ptr %resources.i.i.i.i.i.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %resources.i.i.i.i.i.i.i68.i, ptr %resources.i.i.i.i.i.i.i68.i, align 4
  %prev.i2.i.i.i.i.i.i.i69.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i60.i, i32 0, i32 10, i32 1
  %113 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %resources.i.i.i.i.i.i.i68.i, ptr %prev.i2.i.i.i.i.i.i.i69.i, align 4
  %transfer_list.i.i.i.i.i.i70.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i61.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i71.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i70.i, ptr noundef nonnull %msg.i.i.i.i60.i, ptr noundef nonnull %msg.i.i.i.i60.i) #7
  br i1 %call.i.i.i.i.i.i.i.i71.i, label %if.end.i.i.i.i.i.i.i.i73.i, label %do.end42.i.ad5766_write.exit75.i_crit_edge

do.end42.i.ad5766_write.exit75.i_crit_edge:       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_write.exit75.i

if.end.i.i.i.i.i.i.i.i73.i:                       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %transfer_list.i.i.i.i.i.i70.i, ptr %prev.i.i.i.i.i.i.i.i67.i, align 4
  %115 = ptrtoint ptr %transfer_list.i.i.i.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %msg.i.i.i.i60.i, ptr %transfer_list.i.i.i.i.i.i70.i, align 4
  %prev3.i.i.i.i.i.i.i.i72.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i61.i, i32 0, i32 18, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %msg.i.i.i.i60.i, ptr %prev3.i.i.i.i.i.i.i.i72.i, align 4
  %117 = ptrtoint ptr %msg.i.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %transfer_list.i.i.i.i.i.i70.i, ptr %msg.i.i.i.i60.i, align 4
  br label %ad5766_write.exit75.i

ad5766_write.exit75.i:                            ; preds = %if.end.i.i.i.i.i.i.i.i73.i, %do.end42.i.ad5766_write.exit75.i_crit_edge
  %call.i.i.i.i74.i = call i32 @spi_sync(ptr noundef %103, ptr noundef nonnull %msg.i.i.i.i60.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i60.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i61.i) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %ad5766_write.exit75.i, %ad5766_write.exit65, %ad5766_write.exit
  %lock.i63.i.sink = phi ptr [ %lock.i63.i, %ad5766_write.exit75.i ], [ %lock.i53, %ad5766_write.exit65 ], [ %lock.i, %ad5766_write.exit ]
  %ret.0.ph = phi i32 [ %call.i.i.i.i74.i, %ad5766_write.exit75.i ], [ %call.i.i.i.i64, %ad5766_write.exit65 ], [ %call.i.i.i.i, %ad5766_write.exit ]
  call void @mutex_unlock(ptr noundef %lock.i63.i.sink) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %ad5766_write.exit.i.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call.i.i.i.i.i, %ad5766_write.exit.i.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool32.not = icmp eq i32 %ret.0, 0
  %len.ret.0 = select i1 %tobool32.not, i32 %len, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.ret.0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %readin) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ad5766_spi_write(ptr noundef %st, i8 noundef zeroext %command, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.ad5766_state, ptr %st, i32 0, i32 10
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %command, ptr %data1, align 128
  %arrayidx5 = getelementptr [4 x i8], ptr %data1, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %data, ptr %arrayidx5, align 1
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %4 = getelementptr inbounds i8, ptr %t.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data1, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5766_set_dither_scale(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %chan, i32 noundef %scale) #2 align 64 {
entry:
  %msg.i.i.i.i59 = alloca %struct.spi_message, align 4
  %t.i.i.i60 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %mul = shl i32 %3, 1
  %shl.neg = shl nsw i32 -1, %mul
  %sub4 = sub i32 30, %mul
  %shr = lshr i32 -1, %sub4
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %dither_scale = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dither_scale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dither_scale, align 4
  %and6 = and i32 %5, %neg
  store i32 %and6, ptr %dither_scale, align 4
  %6 = load i32, ptr %channel, align 4
  %mul8 = shl i32 %6, 1
  %shl9 = shl i32 %scale, %mul8
  %or = or i32 %and6, %shl9
  store i32 %or, ptr %dither_scale, align 4
  %conv = trunc i32 %or to i16
  %7 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.ad5766_state, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %data1.i.i = getelementptr inbounds %struct.ad5766_state, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %data1.i.i, align 128
  %arrayidx5.i.i = getelementptr [4 x i8], ptr %data1.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv, ptr %arrayidx5.i.i, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %12 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data1.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.ad5766_write.exit_crit_edge

entry.ad5766_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5766_write.exit

ad5766_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.ad5766_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not, label %do.end41, label %ad5766_write.exit.cleanup_crit_edge

ad5766_write.exit.cleanup_crit_edge:              ; preds = %ad5766_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %ad5766_write.exit
  %26 = ptrtoint ptr %dither_scale to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dither_scale, align 4
  %shr45 = lshr i32 %27, 16
  %conv46 = trunc i32 %shr45 to i16
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  %lock.i62 = getelementptr inbounds %struct.ad5766_state, ptr %29, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i62, i32 noundef 0) #7
  %data1.i.i63 = getelementptr inbounds %struct.ad5766_state, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %data1.i.i63 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 32, ptr %data1.i.i63, align 128
  %arrayidx5.i.i64 = getelementptr [4 x i8], ptr %data1.i.i63, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx5.i.i64 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %conv46, ptr %arrayidx5.i.i64, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i60) #7
  %34 = getelementptr inbounds i8, ptr %t.i.i.i60, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 92)
  %36 = ptrtoint ptr %t.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %data1.i.i63, ptr %t.i.i.i60, align 4
  %len1.i.i.i65 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i60, i32 0, i32 2
  %37 = ptrtoint ptr %len1.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %len1.i.i.i65, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i59) #7
  %38 = getelementptr inbounds i8, ptr %msg.i.i.i.i59, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i.i.i59, ptr %msg.i.i.i.i59, align 4
  %prev.i.i.i.i.i.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i59, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i.i59, ptr %prev.i.i.i.i.i.i.i.i66, align 4
  %resources.i.i.i.i.i.i.i67 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i59, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i.i.i67, ptr %resources.i.i.i.i.i.i.i67, align 4
  %prev.i2.i.i.i.i.i.i.i68 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i59, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i.i.i67, ptr %prev.i2.i.i.i.i.i.i.i68, align 4
  %transfer_list.i.i.i.i.i.i69 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i60, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i69, ptr noundef nonnull %msg.i.i.i.i59, ptr noundef nonnull %msg.i.i.i.i59) #7
  br i1 %call.i.i.i.i.i.i.i.i70, label %if.end.i.i.i.i.i.i.i.i72, label %do.end41.ad5766_write.exit74_crit_edge

do.end41.ad5766_write.exit74_crit_edge:           ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_write.exit74

if.end.i.i.i.i.i.i.i.i72:                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i.i.i69, ptr %prev.i.i.i.i.i.i.i.i66, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i.i59, ptr %transfer_list.i.i.i.i.i.i69, align 4
  %prev3.i.i.i.i.i.i.i.i71 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i60, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i.i59, ptr %prev3.i.i.i.i.i.i.i.i71, align 4
  %47 = ptrtoint ptr %msg.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i.i.i69, ptr %msg.i.i.i.i59, align 4
  br label %ad5766_write.exit74

ad5766_write.exit74:                              ; preds = %if.end.i.i.i.i.i.i.i.i72, %do.end41.ad5766_write.exit74_crit_edge
  %call.i.i.i.i73 = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i.i.i.i59) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i59) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i60) #7
  call void @mutex_unlock(ptr noundef %lock.i62) #7
  br label %cleanup

cleanup:                                          ; preds = %ad5766_write.exit74, %ad5766_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i.i73, %ad5766_write.exit74 ], [ %call.i.i.i.i, %ad5766_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5766_get_dither_scale(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dither_scale = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dither_scale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dither_scale, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %mul = shl i32 %5, 1
  %shl.neg = shl nsw i32 -1, %mul
  %sub4 = sub i32 30, %mul
  %shr = lshr i32 -1, %sub4
  %and = and i32 %shl.neg, %3
  %and6 = and i32 %and, %shr
  %shr9 = lshr i32 %and6, %mul
  ret i32 %shr9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5766_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfers.i.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %lock.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers.i.i) #7
  %5 = getelementptr inbounds i8, ptr %xfers.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 188)
  %data.i.i = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %xfers.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i.i, ptr %xfers.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len.i.i, align 4
  %cs_change.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %cs_change.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %cs_change.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %bits_per_word.i.i, align 1
  %arrayinit.element.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1
  %arrayidx3.i.i = getelementptr %struct.ad5766_state, ptr %1, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx3.i.i, ptr %arrayinit.element.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 1
  %arrayidx5.i.i = getelementptr %struct.ad5766_state, ptr %1, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx5.i.i, ptr %rx_buf.i.i, align 4
  %len6.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 2
  %13 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %len6.i.i, align 4
  %bits_per_word11.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 8
  %14 = ptrtoint ptr %bits_per_word11.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %bits_per_word11.i.i, align 1
  %15 = and i32 %4, 15
  %16 = or i32 %15, 128
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %data.i.i, align 128
  %18 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx3.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge

sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 18
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i, ptr noundef %32, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.1.i.i, label %if.end.i.i.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.i.i.spi_message_add_tail.exit.i.i.1.i.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.spi_message_add_tail.exit.i.i.1.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i.i.1.i.i

if.end.i.i.i.i.i.1.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i.i.i.1.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.1.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i.i.i.1.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i.i.i.1.i.i, ptr %32, align 4
  br label %spi_message_add_tail.exit.i.i.1.i.i

spi_message_add_tail.exit.i.i.1.i.i:              ; preds = %if.end.i.i.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.i.i.spi_message_add_tail.exit.i.i.1.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %20, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %spi_message_add_tail.exit.i.i.1.i.i.ad5766_read.exit_crit_edge

spi_message_add_tail.exit.i.i.1.i.i.ad5766_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_read.exit

if.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18.i.i = getelementptr [2 x i16], ptr %arrayidx5.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx18.i.i, align 2
  %conv19.i.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv19.i.i, ptr %val, align 4
  br label %ad5766_read.exit

ad5766_read.exit:                                 ; preds = %if.end.i.i, %spi_message_add_tail.exit.i.i.1.i.i.ad5766_read.exit_crit_edge
  %.call1 = phi i32 [ %call.i.i.i, %spi_message_add_tail.exit.i.i.1.i.i.ad5766_read.exit_crit_edge ], [ 1, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crt_range = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %crt_range to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crt_range, align 8
  %arrayidx = getelementptr [8 x %struct.ad5766_span_tbl], ptr @ad5766_span_tbl, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crt_range4 = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %crt_range4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crt_range4, align 8
  %arrayidx5 = getelementptr [8 x %struct.ad5766_span_tbl], ptr @ad5766_span_tbl, i32 0, i32 %46
  %max = getelementptr [8 x %struct.ad5766_span_tbl], ptr @ad5766_span_tbl, i32 0, i32 %46, i32 1
  %47 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max, align 4
  %49 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx5, align 4
  %sub = sub i32 %48, %50
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub, ptr %val, align 4
  %chip_info = getelementptr inbounds %struct.ad5766_state, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip_info, align 32
  %channels = getelementptr inbounds %struct.ad5766_chip_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %channels, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %55, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %realbits, align 1
  %conv10 = zext i8 %57 to i32
  %58 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv10, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb2, %ad5766_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb3 ], [ 1, %sw.bb2 ], [ %.call1, %ad5766_read.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5766_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info)
  %cond = icmp eq i32 %info, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %realbits, align 1
  %conv = zext i8 %1 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %val)
  %cmp = icmp slt i32 %shr, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp3 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp3, %cmp
  br i1 %or.cond, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %sw.bb
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 1
  %conv6 = zext i8 %3 to i32
  %shl = shl i32 %val, %conv6
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %conv7 = trunc i32 %5 to i8
  %conv8 = trunc i32 %shl to i16
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.ad5766_state, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %8 = and i8 %conv7, 15
  %9 = or i8 %8, 32
  %data1.i.i = getelementptr inbounds %struct.ad5766_state, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %data1.i.i, align 128
  %arrayidx5.i.i = getelementptr [4 x i8], ptr %data1.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %conv8, ptr %arrayidx5.i.i, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %14 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data1.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.ad5766_write.exit_crit_edge

if.end.ad5766_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5766_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5766_write.exit

ad5766_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.ad5766_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %return

return:                                           ; preds = %ad5766_write.exit, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call.i.i.i.i, %ad5766_write.exit ], [ -22, %sw.bb.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pop_from_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_ad5766__274_670_ad5766_driver_init6, !1, !"__initcall__kmod_ad5766__274_670_ad5766_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5766.c", i32 670, i32 1}
!2 = !{ptr @__exitcall_ad5766_driver_exit, !1, !"__exitcall_ad5766_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author275, !4, !"__UNIQUE_ID_author275", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5766.c", i32 672, i32 1}
!5 = !{ptr @__UNIQUE_ID_description276, !6, !"__UNIQUE_ID_description276", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5766.c", i32 673, i32 1}
!7 = !{ptr @__UNIQUE_ID_file277, !8, !"__UNIQUE_ID_file277", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5766.c", i32 674, i32 1}
!9 = !{ptr @__UNIQUE_ID_license278, !8, !"__UNIQUE_ID_license278", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5766.c", i32 664, i32 11}
!12 = !{ptr @ad5766_driver, !13, !"ad5766_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5766.c", i32 662, i32 26}
!14 = !{ptr @ad5766_spi_ids, !15, !"ad5766_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5766.c", i32 655, i32 35}
!16 = !{ptr @ad5766_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5766.c", i32 615, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/ad5766.c", i32 627, i32 58}
!21 = !{ptr @ad5766_chip_infos, !22, !"ad5766_chip_infos", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/ad5766.c", i32 485, i32 38}
!23 = !{ptr @ad5766_channels, !24, !"ad5766_channels", i1 false, i1 false}
!24 = !{!"../drivers/iio/dac/ad5766.c", i32 482, i32 8}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/dac/ad5766.c", i32 431, i32 2}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/ad5766.c", i32 433, i32 2}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/ad5766.c", i32 435, i32 2}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/dac/ad5766.c", i32 437, i32 2}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/dac/ad5766.c", i32 438, i32 2}
!35 = !{ptr @ad5766_ext_info, !36, !"ad5766_ext_info", i1 false, i1 false}
!36 = !{!"../drivers/iio/dac/ad5766.c", i32 429, i32 44}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/dac/ad5766.c", i32 368, i32 23}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/dac/ad5766.c", i32 376, i32 23}
!41 = !{ptr @ad5766_dither_scale_enum, !42, !"ad5766_dither_scale_enum", i1 false, i1 false}
!42 = !{!"../drivers/iio/dac/ad5766.c", i32 352, i32 30}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/ad5766.c", i32 86, i32 2}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/ad5766.c", i32 87, i32 2}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/ad5766.c", i32 88, i32 2}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/ad5766.c", i32 89, i32 2}
!51 = !{ptr @ad5766_dither_scales, !52, !"ad5766_dither_scales", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/ad5766.c", i32 85, i32 27}
!53 = !{ptr @ad5767_channels, !54, !"ad5767_channels", i1 false, i1 false}
!54 = !{!"../drivers/iio/dac/ad5766.c", i32 483, i32 8}
!55 = !{ptr @ad5766_info, !56, !"ad5766_info", i1 false, i1 false}
!56 = !{!"../drivers/iio/dac/ad5766.c", i32 282, i32 30}
!57 = !{ptr @ad5766_span_tbl, !58, !"ad5766_span_tbl", i1 false, i1 false}
!58 = !{!"../drivers/iio/dac/ad5766.c", i32 134, i32 37}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/dac/ad5766.c", i32 501, i32 11}
!61 = !{ptr @ad5766_dt_match, !62, !"ad5766_dt_match", i1 false, i1 false}
!62 = !{!"../drivers/iio/dac/ad5766.c", i32 648, i32 34}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{i8 0, i8 2}
