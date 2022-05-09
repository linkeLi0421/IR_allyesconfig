; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ltc2632.c_pt.bc'
source_filename = "../drivers/iio/dac/ltc2632.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ltc2632_chip_info = type { ptr, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ltc2632_state = type { ptr, i32, i32, ptr }

@__initcall__kmod_ltc2632__290_480_ltc2632_driver_init6 = internal global ptr @ltc2632_driver_init, section ".initcall6.init", align 4
@ltc2632_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ltc2632_id, ptr @ltc2632_probe, ptr @ltc2632_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc2632_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ltc2632_driver_exit = internal global ptr @ltc2632_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [74 x i8] c"ltc2632.author=Maxime Roussin-Belanger <maxime.roussinbelanger@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [43 x i8] c"ltc2632.description=LTC2632 DAC SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"ltc2632.file=drivers/iio/dac/ltc2632\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"ltc2632.license=GPL v2\00", section ".modinfo", align 1
@ltc2632_id = internal constant { [19 x %struct.spi_device_id], [180 x i8] } { [19 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ltc2632-l12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ltc2632_chip_info_tbl to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2632-l10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 12) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2632-l8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 24) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2632-h12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 36) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2632-h10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 48) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2632-h8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 60) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2634-l12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 72) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2634-l10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 84) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2634-l8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 96) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2634-h12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 108) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2634-h10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 120) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2634-h8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 132) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2636-l12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 144) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2636-l10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 156) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2636-l8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 168) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2636-h12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 180) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2636-h10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 192) to i32) }, %struct.spi_device_id { [32 x i8] c"ltc2636-h8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 204) to i32) }, %struct.spi_device_id zeroinitializer], [180 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc2632\00", [24 x i8] zeroinitializer }, align 32
@ltc2632_of_match = internal constant { [19 x %struct.of_device_id], [948 x i8] } { [19 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2632-l12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ltc2632_chip_info_tbl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2632-l10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2632-l8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2632-h12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2632-h10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2632-h8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 60) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2634-l12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2634-l10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 84) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2634-l8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2634-h12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2634-h10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2634-h8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 132) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2636-l12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2636-l10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 156) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2636-l8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 168) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2636-h12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 180) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2636-h10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 192) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2636-h8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ltc2632_chip_info_tbl, i64 204) }, %struct.of_device_id zeroinitializer], [948 x i8] zeroinitializer }, align 32
@ltc2632_chip_info_tbl = internal constant { [18 x %struct.ltc2632_chip_info], [40 x i8] } { [18 x %struct.ltc2632_chip_info] [%struct.ltc2632_chip_info { ptr @ltc2632x12_channels, i32 2, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x10_channels, i32 2, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x8_channels, i32 2, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x12_channels, i32 2, i32 4096 }, %struct.ltc2632_chip_info { ptr @ltc2632x10_channels, i32 2, i32 4096 }, %struct.ltc2632_chip_info { ptr @ltc2632x8_channels, i32 2, i32 4096 }, %struct.ltc2632_chip_info { ptr @ltc2632x12_channels, i32 4, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x10_channels, i32 4, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x8_channels, i32 4, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x12_channels, i32 4, i32 4096 }, %struct.ltc2632_chip_info { ptr @ltc2632x10_channels, i32 4, i32 4096 }, %struct.ltc2632_chip_info { ptr @ltc2632x8_channels, i32 4, i32 4096 }, %struct.ltc2632_chip_info { ptr @ltc2632x12_channels, i32 8, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x10_channels, i32 8, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x8_channels, i32 8, i32 2500 }, %struct.ltc2632_chip_info { ptr @ltc2632x12_channels, i32 8, i32 4096 }, %struct.ltc2632_chip_info { ptr @ltc2632x10_channels, i32 8, i32 4096 }, %struct.ltc2632_chip_info { ptr @ltc2632x8_channels, i32 8, i32 4096 }], [40 x i8] zeroinitializer }, align 32
@ltc2632x12_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 0, i8 12, i8 0, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 0, i8 12, i8 0, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 { i8 0, i8 12, i8 0, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 { i8 0, i8 12, i8 0, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 { i8 0, i8 12, i8 0, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 { i8 0, i8 12, i8 0, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 { i8 0, i8 12, i8 0, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 { i8 0, i8 12, i8 0, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ltc2632x10_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 0, i8 10, i8 0, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 0, i8 10, i8 0, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 { i8 0, i8 10, i8 0, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 { i8 0, i8 10, i8 0, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 { i8 0, i8 10, i8 0, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 { i8 0, i8 10, i8 0, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 { i8 0, i8 10, i8 0, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 { i8 0, i8 10, i8 0, i8 6, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ltc2632x8_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 0, i8 8, i8 0, i8 8, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 0, i8 8, i8 0, i8 8, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 { i8 0, i8 8, i8 0, i8 8, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 { i8 0, i8 8, i8 0, i8 8, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 { i8 0, i8 8, i8 0, i8 8, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 { i8 0, i8 8, i8 0, i8 8, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 { i8 0, i8 8, i8 0, i8 8, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 { i8 0, i8 8, i8 0, i8 8, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ltc2632_ext_info, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@ltc2632_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.1, i32 0, ptr @ltc2632_read_dac_powerdown, ptr @ltc2632_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ltc2632_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 337, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Set internal reference command failed, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc2632_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/dac/ltc2632.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc2632_probe._entry_ptr = internal global ptr @ltc2632_probe._entry, section ".printk_index", align 4
@ltc2632_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 342, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error getting voltage reference regulator\0A\00", [53 x i8] zeroinitializer }, align 32
@ltc2632_probe._entry_ptr.11 = internal global ptr @ltc2632_probe._entry.9, section ".printk_index", align 4
@ltc2632_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 350, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"enable reference regulator failed, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ltc2632_probe._entry_ptr.14 = internal global ptr @ltc2632_probe._entry.12, section ".printk_index", align 4
@ltc2632_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 360, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Set external reference command failed, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ltc2632_probe._entry_ptr.17 = internal global ptr @ltc2632_probe._entry.15, section ".printk_index", align 4
@ltc2632_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ltc2632_read_raw, ptr null, ptr null, ptr @ltc2632_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"ltc2632_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 471, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"ltc2632_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 388, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 473, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"ltc2632_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 411, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"ltc2632_chip_info_tbl\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 214, i32 39 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"ltc2632x12_channels\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 210, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"ltc2632x10_channels\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 211, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"ltc2632x8_channels\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 212, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"ltc2632_ext_info\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 173, i32 44 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 175, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 138, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 326, i32 56 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 335, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 341, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 348, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 358, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"ltc2632_info\00", align 1
@___asan_gen_.91 = private constant [29 x i8] c"../drivers/iio/dac/ltc2632.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 168, i32 30 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ltc2632_driver_exit, ptr @__initcall__kmod_ltc2632__290_480_ltc2632_driver_init6, ptr @ltc2632_driver_exit, ptr @ltc2632_probe._entry, ptr @ltc2632_probe._entry.12, ptr @ltc2632_probe._entry.15, ptr @ltc2632_probe._entry.9, ptr @ltc2632_probe._entry_ptr, ptr @ltc2632_probe._entry_ptr.11, ptr @ltc2632_probe._entry_ptr.14, ptr @ltc2632_probe._entry_ptr.17, ptr @ltc2632_driver, ptr @ltc2632_id, ptr @.str, ptr @ltc2632_of_match, ptr @ltc2632_chip_info_tbl, ptr @ltc2632x12_channels, ptr @ltc2632x10_channels, ptr @ltc2632x8_channels, ptr @ltc2632_ext_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @ltc2632_info], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_id to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_of_match to i32), i32 3724, i32 4672, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_chip_info_tbl to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632x12_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632x10_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632x8_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2632_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2632_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ltc2632_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc2632_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ltc2632_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2632_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i101 = alloca %struct.spi_message, align 4
  %t.i.i102 = alloca %struct.spi_transfer, align 4
  %msg.i103 = alloca [3 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 16) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  store ptr %spi, ptr %1, align 4
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = inttoptr i32 %5 to ptr
  %call4 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.3) #6
  %vref_reg = getelementptr inbounds %struct.ltc2632_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %vref_reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %vref_reg, align 4
  %cmp = icmp eq ptr %call4, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %8 = ptrtoint ptr %vref_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vref_reg, align 4
  %vref_mv = getelementptr inbounds %struct.ltc2632_chip_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vref_mv, align 4
  %vref_mv9 = getelementptr inbounds %struct.ltc2632_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %vref_mv9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %vref_mv9, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg.i) #6
  %12 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 2
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 96, ptr %msg.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %17 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
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
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then7.ltc2632_spi_write.exit_crit_edge

if.then7.ltc2632_spi_write.exit_crit_edge:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc2632_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ltc2632_spi_write.exit

ltc2632_spi_write.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.then7.ltc2632_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool11.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool11.not, label %ltc2632_spi_write.exit.if.end46_crit_edge, label %do.end

ltc2632_spi_write.exit.if.end46_crit_edge:        ; preds = %ltc2632_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end:                                           ; preds = %ltc2632_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef %call.i.i.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end20, label %if.else24

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #9
  %31 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vref_reg, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup

if.else24:                                        ; preds = %if.else
  %call26 = tail call i32 @regulator_enable(ptr noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %call26) #9
  br label %cleanup

if.end33:                                         ; preds = %if.else24
  %34 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vref_reg, align 4
  %call35 = tail call i32 @regulator_get_voltage(ptr noundef %35) #6
  %div = sdiv i32 %call35, 1000
  %vref_mv36 = getelementptr inbounds %struct.ltc2632_state, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %vref_mv36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div, ptr %vref_mv36, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg.i103) #6
  %37 = getelementptr inbounds [3 x i8], ptr %msg.i103, i32 0, i32 1
  %38 = getelementptr inbounds [3 x i8], ptr %msg.i103, i32 0, i32 2
  %39 = ptrtoint ptr %msg.i103 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 112, ptr %msg.i103, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %37, align 1
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i102) #6
  %42 = getelementptr inbounds i8, ptr %t.i.i102, i32 4
  %43 = call ptr @memset(ptr %42, i32 0, i32 92)
  %44 = ptrtoint ptr %t.i.i102 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i103, ptr %t.i.i102, align 4
  %len1.i.i104 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i102, i32 0, i32 2
  %45 = ptrtoint ptr %len1.i.i104 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %len1.i.i104, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i101) #6
  %46 = getelementptr inbounds i8, ptr %msg.i.i.i101, i32 8
  %47 = call ptr @memset(ptr %46, i32 0, i32 40)
  %48 = ptrtoint ptr %msg.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %msg.i.i.i101, ptr %msg.i.i.i101, align 4
  %prev.i.i.i.i.i.i.i105 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i101, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i.i.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i.i101, ptr %prev.i.i.i.i.i.i.i105, align 4
  %resources.i.i.i.i.i.i106 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i101, i32 0, i32 10
  %50 = ptrtoint ptr %resources.i.i.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %resources.i.i.i.i.i.i106, ptr %resources.i.i.i.i.i.i106, align 4
  %prev.i2.i.i.i.i.i.i107 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i101, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %prev.i2.i.i.i.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %resources.i.i.i.i.i.i106, ptr %prev.i2.i.i.i.i.i.i107, align 4
  %transfer_list.i.i.i.i.i108 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i102, i32 0, i32 18
  %call.i.i.i.i.i.i.i109 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i108, ptr noundef nonnull %msg.i.i.i101, ptr noundef nonnull %msg.i.i.i101) #6
  br i1 %call.i.i.i.i.i.i.i109, label %if.end.i.i.i.i.i.i.i111, label %if.end33.ltc2632_spi_write.exit113_crit_edge

if.end33.ltc2632_spi_write.exit113_crit_edge:     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc2632_spi_write.exit113

if.end.i.i.i.i.i.i.i111:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %prev.i.i.i.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %transfer_list.i.i.i.i.i108, ptr %prev.i.i.i.i.i.i.i105, align 4
  %53 = ptrtoint ptr %transfer_list.i.i.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i.i.i101, ptr %transfer_list.i.i.i.i.i108, align 4
  %prev3.i.i.i.i.i.i.i110 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i102, i32 0, i32 18, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i.i101, ptr %prev3.i.i.i.i.i.i.i110, align 4
  %55 = ptrtoint ptr %msg.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %transfer_list.i.i.i.i.i108, ptr %msg.i.i.i101, align 4
  br label %ltc2632_spi_write.exit113

ltc2632_spi_write.exit113:                        ; preds = %if.end.i.i.i.i.i.i.i111, %if.end33.ltc2632_spi_write.exit113_crit_edge
  %call.i.i.i112 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i101) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i101) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i102) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg.i103) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i112)
  %tobool38.not = icmp eq i32 %call.i.i.i112, 0
  br i1 %tobool38.not, label %ltc2632_spi_write.exit113.if.end46_crit_edge, label %do.end42

ltc2632_spi_write.exit113.if.end46_crit_edge:     ; preds = %ltc2632_spi_write.exit113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end42:                                         ; preds = %ltc2632_spi_write.exit113
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.i112) #9
  br label %cleanup

if.end46:                                         ; preds = %ltc2632_spi_write.exit113.if.end46_crit_edge, %ltc2632_spi_write.exit.if.end46_crit_edge
  %tobool.not.i = icmp eq ptr %spi, null
  br i1 %tobool.not.i, label %if.end46.cond.false_crit_edge, label %dev_of_node.exit

if.end46.cond.false_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

dev_of_node.exit:                                 ; preds = %if.end46
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %56 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node.i, align 8
  %tobool49.not = icmp eq ptr %57, null
  br i1 %tobool49.not, label %dev_of_node.exit.cond.false_crit_edge, label %dev_of_node.exit118

dev_of_node.exit.cond.false_crit_edge:            ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

dev_of_node.exit118:                              ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node.i, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  br label %cond.end

cond.false:                                       ; preds = %dev_of_node.exit.cond.false_crit_edge, %if.end46.cond.false_crit_edge
  %call52 = call ptr @spi_get_device_id(ptr noundef %spi) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %dev_of_node.exit118
  %cond = phi ptr [ %61, %dev_of_node.exit118 ], [ %call52, %cond.false ]
  %name54 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %62 = ptrtoint ptr %name54 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cond, ptr %name54, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %63 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ltc2632_info, ptr %info, align 8
  %64 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %call, align 8
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %6, align 4
  %channels55 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %67 = ptrtoint ptr %channels55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %channels55, align 8
  %num_channels = getelementptr inbounds %struct.ltc2632_chip_info, ptr %6, i32 0, i32 1
  %68 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_channels, align 4
  %num_channels56 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %70 = ptrtoint ptr %num_channels56 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %num_channels56, align 4
  %call57 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end42, %do.end31, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %do.end ], [ %call57, %cond.end ], [ %33, %do.end20 ], [ %call26, %do.end31 ], [ %call.i.i.i112, %do.end42 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2632_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %vref_reg = getelementptr inbounds %struct.ltc2632_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref_reg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2632_read_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %powerdown_cache_mask = getelementptr inbounds %struct.ltc2632_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %powerdown_cache_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %powerdown_cache_mask, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = lshr i32 %3, %5
  %7 = and i32 %6, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %7) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2632_write_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca [3 x i8], align 1
  %pwr_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_down) #6
  %0 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pwr_down, align 1, !annotation !65
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %pwr_down) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwr_down, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %channel4 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel4, align 4
  %shl5 = shl nuw i32 1, %6
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %powerdown_cache_mask = getelementptr inbounds %struct.ltc2632_state, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %powerdown_cache_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %powerdown_cache_mask, align 4
  %or = or i32 %8, %shl5
  store i32 %or, ptr %powerdown_cache_mask, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl5, -1
  %powerdown_cache_mask6 = getelementptr inbounds %struct.ltc2632_state, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %powerdown_cache_mask6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %powerdown_cache_mask6, align 4
  %and = and i32 %10, %neg
  store i32 %and, ptr %powerdown_cache_mask6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %channel8 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %13 = ptrtoint ptr %channel8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel8, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg.i) #6
  %15 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 2
  %17 = trunc i32 %14 to i8
  %conv.i.i.i = or i8 %17, 64
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i.i, ptr %msg.i, align 1
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %15, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %21 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 92)
  %23 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %25 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end7.ltc2632_spi_write.exit_crit_edge

if.end7.ltc2632_spi_write.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc2632_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ltc2632_spi_write.exit

ltc2632_spi_write.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.end7.ltc2632_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not = icmp eq i32 %call.i.i.i, 0
  %len.call9 = select i1 %tobool10.not, i32 %len, i32 %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %ltc2632_spi_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call9, %ltc2632_spi_write.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_down) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ltc2632_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %m)
  %cond = icmp eq i32 %m, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %vref_mv = getelementptr inbounds %struct.ltc2632_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vref_mv, align 4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %realbits, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2632_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg.i) #6
  %10 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %msg.i, i32 0, i32 2
  %conv1.i = shl i32 %7, 16
  %conv3.i = and i32 %val, 65535
  %conv4.i = zext i8 %9 to i32
  %shl5.i = shl i32 %conv3.i, %conv4.i
  %or.i = or i32 %shl5.i, %conv1.i
  %or6.i = lshr i32 %or.i, 16
  %12 = trunc i32 %or6.i to i8
  %conv.i.i.i = or i8 %12, 48
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i.i.i, ptr %msg.i, align 1
  %shr1.i.i.i = lshr i32 %shl5.i, 8
  %conv2.i.i.i = trunc i32 %shr1.i.i.i to i8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2.i.i.i, ptr %10, align 1
  %conv4.i.i.i = trunc i32 %shl5.i to i8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4.i.i.i, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %16 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %20 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.ltc2632_spi_write.exit_crit_edge

if.end.ltc2632_spi_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc2632_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ltc2632_spi_write.exit

ltc2632_spi_write.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.end.ltc2632_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ltc2632_spi_write.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ltc2632_spi_write.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_ltc2632__290_480_ltc2632_driver_init6, !1, !"__initcall__kmod_ltc2632__290_480_ltc2632_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ltc2632.c", i32 480, i32 1}
!2 = !{ptr @__exitcall_ltc2632_driver_exit, !1, !"__exitcall_ltc2632_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ltc2632.c", i32 482, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ltc2632.c", i32 483, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ltc2632.c", i32 484, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ltc2632.c", i32 473, i32 11}
!12 = !{ptr @ltc2632_driver, !13, !"ltc2632_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ltc2632.c", i32 471, i32 26}
!14 = !{ptr @ltc2632_id, !15, !"ltc2632_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ltc2632.c", i32 388, i32 35}
!16 = !{ptr @ltc2632_chip_info_tbl, !17, !"ltc2632_chip_info_tbl", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ltc2632.c", i32 214, i32 39}
!18 = !{ptr @ltc2632x12_channels, !19, !"ltc2632x12_channels", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/ltc2632.c", i32 210, i32 8}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/dac/ltc2632.c", i32 175, i32 11}
!22 = !{ptr @ltc2632_ext_info, !23, !"ltc2632_ext_info", i1 false, i1 false}
!23 = !{!"../drivers/iio/dac/ltc2632.c", i32 173, i32 44}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/dac/ltc2632.c", i32 138, i32 25}
!26 = !{ptr @ltc2632x10_channels, !27, !"ltc2632x10_channels", i1 false, i1 false}
!27 = !{!"../drivers/iio/dac/ltc2632.c", i32 211, i32 8}
!28 = !{ptr @ltc2632x8_channels, !29, !"ltc2632x8_channels", i1 false, i1 false}
!29 = !{!"../drivers/iio/dac/ltc2632.c", i32 212, i32 8}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/ltc2632.c", i32 326, i32 56}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/dac/ltc2632.c", i32 335, i32 4}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ltc2632_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @ltc2632_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/ltc2632.c", i32 341, i32 3}
!42 = !{ptr @ltc2632_probe._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ltc2632_probe._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/dac/ltc2632.c", i32 348, i32 4}
!46 = !{ptr @ltc2632_probe._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ltc2632_probe._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/dac/ltc2632.c", i32 358, i32 4}
!50 = !{ptr @ltc2632_probe._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ltc2632_probe._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ltc2632_info, !53, !"ltc2632_info", i1 false, i1 false}
!53 = !{!"../drivers/iio/dac/ltc2632.c", i32 168, i32 30}
!54 = !{ptr @ltc2632_of_match, !55, !"ltc2632_of_match", i1 false, i1 false}
!55 = !{!"../drivers/iio/dac/ltc2632.c", i32 411, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i8 0, i8 2}
