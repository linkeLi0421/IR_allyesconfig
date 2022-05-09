; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5380.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5380.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad5380_chip_info = type { %struct.iio_chan_spec, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.ad5380_state = type { ptr, ptr, ptr, i32, i8, %struct.mutex }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_ad5380__290_642_ad5380_spi_init6 = internal global ptr @ad5380_spi_init, section ".initcall6.init", align 4
@__exitcall_ad5380_spi_exit = internal global ptr @ad5380_spi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"ad5380.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [66 x i8] c"ad5380.description=Analog Devices AD5380/81/82/83/84/90/91/92 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad5380.file=drivers/iio/dac/ad5380\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad5380.license=GPL v2\00", section ".modinfo", align 1
@ad5380_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5380_spi_ids, ptr @ad5380_spi_probe, ptr @ad5380_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@ad5380_spi_ids = internal constant { [17 x %struct.spi_device_id], [156 x i8] } { [17 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5380-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5380-5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad5381-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad5381-5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad5382-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ad5382-5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"ad5383-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"ad5383-5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"ad5384-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5384-5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad5390-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"ad5390-5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id { [32 x i8] c"ad5391-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.spi_device_id { [32 x i8] c"ad5391-5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.spi_device_id { [32 x i8] c"ad5392-3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.spi_device_id { [32 x i8] c"ad5392-5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.spi_device_id zeroinitializer], [156 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5380\00", [25 x i8] zeroinitializer }, align 32
@ad5380_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad5380_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 10, i32 0, i32 0, i32 14, ptr null, ptr @ad5380_reg_false, ptr @ad5380_reg_false, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 163, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ad5380:483:(&ad5380_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@ad5380_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 379, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5380_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5380.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5380_probe._entry_ptr = internal global ptr @ad5380_probe._entry, section ".printk_index", align 4
@ad5380_chip_info_tbl = internal constant { [14 x %struct.ad5380_chip_info], [320 x i8] } { [14 x %struct.ad5380_chip_info] [%struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 40, i32 1250 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 40, i32 2500 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 16, i32 1250 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 16, i32 2500 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 32, i32 1250 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 32, i32 2500 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 32, i32 1250 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 32, i32 2500 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 16, i32 1250 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 16, i32 2500 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 16, i32 1250 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 2, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 16, i32 2500 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 8, i32 1250 }, %struct.ad5380_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5380_ext_info, ptr null, ptr null, i8 96 }, i32 8, i32 2500 }], [320 x i8] zeroinitializer }, align 32
@ad5380_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5380_read_raw, ptr null, ptr null, ptr @ad5380_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5380_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad5380_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate channel spec: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ad5380_probe._entry_ptr.10 = internal global ptr @ad5380_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad5380_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable vref regulators: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ad5380_probe._entry_ptr.14 = internal global ptr @ad5380_probe._entry.12, section ".printk_index", align 4
@ad5380_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to write to device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ad5380_probe._entry_ptr.17 = internal global ptr @ad5380_probe._entry.15, section ".printk_index", align 4
@ad5380_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 432, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register iio device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ad5380_probe._entry_ptr.20 = internal global ptr @ad5380_probe._entry.18, section ".printk_index", align 4
@ad5380_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.21, i32 0, ptr @ad5380_read_dac_powerdown, ptr @ad5380_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.22, i32 1, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ad5380_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.23, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ad5380_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@ad5380_powerdown_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ad5380_powerdown_modes, i32 2, ptr @ad5380_set_powerdown_mode, ptr @ad5380_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ad5380_powerdown_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.25, ptr @.str.26], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"100kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"three_state\00", [20 x i8] zeroinitializer }, align 32
@ad5380_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad5380_i2c_probe, ptr @ad5380_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad5380_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ad5380_i2c_ids = internal constant { [17 x %struct.i2c_device_id], [104 x i8] } { [17 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad5380-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad5380-5\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ad5381-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ad5381-5\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ad5382-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ad5382-5\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ad5383-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"ad5383-5\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"ad5384-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad5384-5\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ad5390-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"ad5390-5\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"ad5391-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"ad5391-5\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"ad5392-3\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"ad5392-5\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@ad5380_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ad5380:558:(&ad5380_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"ad5380_spi_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 519, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"ad5380_spi_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 498, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 521, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"ad5380_regmap_config\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 465, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 483, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 379, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"ad5380_chip_info_tbl\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 273, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"ad5380_info\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 238, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 394, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 398, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 405, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 409, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 426, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 432, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"ad5380_ext_info\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 243, i32 44 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 245, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 250, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"ad5380_powerdown_mode_enum\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 151, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 252, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 88, i32 25 }
@___asan_gen_.124 = private unnamed_addr constant [23 x i8] c"ad5380_powerdown_modes\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 117, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 118, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 119, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"ad5380_i2c_driver\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 594, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"ad5380_i2c_ids\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 573, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [28 x i8] c"../drivers/iio/dac/ad5380.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 558, i32 11 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5380_spi_exit, ptr @__initcall__kmod_ad5380__290_642_ad5380_spi_init6, ptr @ad5380_probe._entry, ptr @ad5380_probe._entry.12, ptr @ad5380_probe._entry.15, ptr @ad5380_probe._entry.18, ptr @ad5380_probe._entry.8, ptr @ad5380_probe._entry_ptr, ptr @ad5380_probe._entry_ptr.10, ptr @ad5380_probe._entry_ptr.14, ptr @ad5380_probe._entry_ptr.17, ptr @ad5380_probe._entry_ptr.20, ptr @ad5380_spi_exit, ptr @ad5380_spi_driver, ptr @ad5380_spi_ids, ptr @.str, ptr @ad5380_spi_probe._key, ptr @ad5380_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad5380_chip_info_tbl, ptr @ad5380_info, ptr @ad5380_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @ad5380_ext_info, ptr @.str.21, ptr @.str.22, ptr @ad5380_powerdown_mode_enum, ptr @.str.23, ptr @.str.24, ptr @ad5380_powerdown_modes, ptr @.str.25, ptr @.str.26, ptr @ad5380_i2c_driver, ptr @ad5380_i2c_ids, ptr @ad5380_i2c_probe._key, ptr @.str.27], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_spi_ids to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_chip_info_tbl to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_powerdown_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_powerdown_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_i2c_ids to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5380_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_spi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5380_spi_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i8 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad5380_i2c_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool2.not = icmp eq i32 %call.i8, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5380_spi_driver, i32 0, i32 4)) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i8, %if.then3 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5380_spi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ad5380_i2c_driver) #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5380_spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_spi_probe(ptr noundef %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %call1 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @ad5380_regmap_config, ptr noundef nonnull @ad5380_spi_probe._key, ptr noundef nonnull @.str.1) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %call4 = tail call fastcc i32 @ad5380_probe(ptr noundef %spi, ptr noundef %call1, i32 noundef %2, ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_spi_remove(ptr nocapture noundef readonly %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels.i, align 8
  tail call void @kfree(ptr noundef %5) #8
  %vref_reg.i = getelementptr inbounds %struct.ad5380_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref_reg.i, align 4
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.ad5380_remove.exit_crit_edge, label %if.then.i

entry.ad5380_remove.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5380_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @regulator_disable(ptr noundef %7) #8
  br label %ad5380_remove.exit

ad5380_remove.exit:                               ; preds = %if.then.i, %entry.ad5380_remove.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5380_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %type, ptr noundef %name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 112) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i, align 4
  %arrayidx = getelementptr [14 x %struct.ad5380_chip_info], ptr @ad5380_chip_info_tbl, i32 0, i32 %type
  %chip_info = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %chip_info, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %1, align 4
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name3, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ad5380_info, ptr %info, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %8 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.ad5380_chip_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels, align 4
  %num_channels5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %num_channels5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %num_channels5, align 4
  %lock = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ad5380_probe.__key) #8
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %chip_info.i = getelementptr inbounds %struct.ad5380_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip_info.i, align 4
  %num_channels.i = getelementptr inbounds %struct.ad5380_chip_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_channels.i, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 88) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end.do.end13_crit_edge, label %if.end7.i.i.i, !prof !89

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

if.end7.i.i.i:                                    ; preds = %if.end
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.do.end13_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.do.end13_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %21 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip_info.i, align 4
  %num_channels325.i = getelementptr inbounds %struct.ad5380_chip_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %num_channels325.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_channels325.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp26.not.i = icmp eq i32 %24, 0
  br i1 %cmp26.not.i, label %for.cond.preheader.i.if.end14_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end14_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %25 = phi ptr [ %30, %for.body.i.for.body.i_crit_edge ], [ %22, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iio_chan_spec, ptr %call8.i.i.i, i32 %i.027.i
  %26 = call ptr @memcpy(ptr %arrayidx.i, ptr %25, i32 88)
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %call8.i.i.i, i32 %i.027.i, i32 1
  %27 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.027.i, ptr %channel.i, align 4
  %address.i = getelementptr %struct.iio_chan_spec, ptr %call8.i.i.i, i32 %i.027.i, i32 3
  %28 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.027.i, ptr %address.i, align 4
  %inc.i = add nuw i32 %i.027.i, 1
  %29 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip_info.i, align 4
  %num_channels3.i = getelementptr inbounds %struct.ad5380_chip_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %num_channels3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_channels3.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end14_crit_edge

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end13:                                         ; preds = %if.end7.i.i.i.do.end13_crit_edge, %if.end.do.end13_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef -12) #11
  br label %cleanup

if.end14:                                         ; preds = %for.body.i.if.end14_crit_edge, %for.cond.preheader.i.if.end14_crit_edge
  %channels7.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %33 = ptrtoint ptr %channels7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i.i, ptr %channels7.i, align 8
  %34 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip_info, align 4
  %int_vref = getelementptr inbounds %struct.ad5380_chip_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %int_vref to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %int_vref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %37)
  %cmp16 = icmp eq i32 %37, 2500
  %spec.select = select i1 %cmp16, i32 4096, i32 0
  %call19 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %vref_reg = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %vref_reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call19, ptr %vref_reg, align 4
  %cmp.i108 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end14
  %call24 = tail call i32 @regulator_enable(ptr noundef %call19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end30, label %do.end29

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call24) #11
  br label %error_free_reg

if.end30:                                         ; preds = %if.then22
  %39 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vref_reg, align 4
  %call32 = tail call i32 @regulator_get_voltage(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.error_disable_reg_crit_edge, label %if.end35

if.end30.error_disable_reg_crit_edge:             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %div113 = udiv i32 %call32, 1000
  %vref = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div113, ptr %vref, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip_info, align 4
  %int_vref37 = getelementptr inbounds %struct.ad5380_chip_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %int_vref37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %int_vref37, align 4
  %vref38 = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %vref38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %vref38, align 4
  %or39 = or i32 %spec.select, 1024
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end35
  %ctrl.1 = phi i32 [ %or39, %if.else ], [ %spec.select, %if.end35 ]
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call42 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 48, i32 noundef %ctrl.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call42) #11
  br label %error_disable_reg

if.end48:                                         ; preds = %if.end40
  %call49 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %do.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call49) #11
  br label %error_disable_reg

error_disable_reg:                                ; preds = %do.end54, %do.end47, %if.end30.error_disable_reg_crit_edge
  %ret.0 = phi i32 [ %call42, %do.end47 ], [ %call49, %do.end54 ], [ %call32, %if.end30.error_disable_reg_crit_edge ]
  %49 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vref_reg, align 4
  %cmp.i109 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %error_disable_reg.error_free_reg_crit_edge, label %if.then58

error_disable_reg.error_free_reg_crit_edge:       ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_reg

if.then58:                                        ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call i32 @regulator_disable(ptr noundef %50) #8
  br label %error_free_reg

error_free_reg:                                   ; preds = %if.then58, %error_disable_reg.error_free_reg_crit_edge, %do.end29
  %ret.1 = phi i32 [ %ret.0, %error_disable_reg.error_free_reg_crit_edge ], [ %ret.0, %if.then58 ], [ %call24, %do.end29 ]
  %51 = ptrtoint ptr %channels7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %channels7.i, align 8
  tail call void @kfree(ptr noundef %52) #8
  br label %cleanup

cleanup:                                          ; preds = %error_free_reg, %if.end48.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end13 ], [ %ret.1, %error_free_reg ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ad5380_reg_false(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_read_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr_down, align 4, !range !90
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %4) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_write_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  %pwr_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_down) #8
  %2 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %pwr_down, align 1, !annotation !91
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %pwr_down) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwr_down, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %. = select i1 %tobool2.not, i32 36, i32 32
  %call6 = call i32 @regmap_write(ptr noundef %6, i32 noundef %., i32 noundef 0) #8
  %7 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pwr_down, align 1, !range !90
  %pwr_down9 = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %pwr_down9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %pwr_down9, align 4
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool11.not = icmp eq i32 %call6, 0
  %len.ret.0 = select i1 %tobool11.not, i32 %len, i32 %call6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.ret.0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_down) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_set_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %shl = shl i32 %mode, 13
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 48, i32 noundef 8192, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_get_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #3 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !91
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 48, ptr noundef nonnull %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %shr = lshr i32 %6, 13
  %and = and i32 %shr, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge37
    i32 5, label %sw.bb3
    i32 2, label %sw.bb16
  ]

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge37
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %info, label %sw.bb.ad5380_info_to_reg.exit_crit_edge [
    i32 0, label %sw.bb.return.sink.split.i_crit_edge
    i32 4, label %sw.bb5.i
  ]

sw.bb.return.sink.split.i_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

sw.bb.ad5380_info_to_reg.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5380_info_to_reg.exit

sw.bb5.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb5.i, %sw.bb.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb5.i ], [ 3, %sw.bb.return.sink.split.i_crit_edge ]
  %address6.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address6.i, align 4
  %shl7.i = shl i32 %7, 2
  %or8.i = or i32 %shl7.i, %.sink.i
  br label %ad5380_info_to_reg.exit

ad5380_info_to_reg.exit:                          ; preds = %return.sink.split.i, %sw.bb.ad5380_info_to_reg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb.ad5380_info_to_reg.exit_crit_edge ], [ %or8.i, %return.sink.split.i ]
  %call2 = tail call i32 @regmap_read(ptr noundef %4, i32 noundef %retval.0.i, ptr noundef %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %ad5380_info_to_reg.exit.cleanup_crit_edge

ad5380_info_to_reg.exit.cleanup_crit_edge:        ; preds = %ad5380_info_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ad5380_info_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %shr = ashr i32 %11, %conv
  store i32 %shr, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %14 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address, align 4
  %shl = shl i32 %15, 2
  %or = or i32 %shl, 2
  %call5 = tail call i32 @regmap_read(ptr noundef %13, i32 noundef %or, ptr noundef %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %shift10 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %shift10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift10, align 1
  %conv11 = zext i8 %17 to i32
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %shr12 = ashr i32 %19, %conv11
  store i32 %shr12, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %realbits, align 1
  %conv14 = zext i8 %21 to i32
  %shl15 = shl nuw i32 1, %conv14
  %div.neg = sdiv i32 %shl15, -2
  %sub = add i32 %div.neg, %shr12
  store i32 %sub, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vref = getelementptr inbounds %struct.ad5380_state, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vref, align 4
  %mul = shl i32 %23, 1
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %val, align 4
  %realbits18 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %realbits18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %realbits18, align 1
  %conv19 = zext i8 %26 to i32
  %27 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv19, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %if.end8, %sw.bb3.cleanup_crit_edge, %if.end, %ad5380_info_to_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb16 ], [ 1, %if.end8 ], [ 1, %if.end ], [ %call2, %ad5380_info_to_reg.exit.cleanup_crit_edge ], [ %call5, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %realbits, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge44
    i32 5, label %sw.bb9
  ]

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge44
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp.not = icmp ule i32 %shl, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %info, label %if.end.ad5380_info_to_reg.exit_crit_edge [
    i32 0, label %if.end.return.sink.split.i_crit_edge
    i32 4, label %sw.bb5.i
  ]

if.end.return.sink.split.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

if.end.ad5380_info_to_reg.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5380_info_to_reg.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb5.i, %if.end.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb5.i ], [ 3, %if.end.return.sink.split.i_crit_edge ]
  %address6.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %8 = ptrtoint ptr %address6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address6.i, align 4
  %shl7.i = shl i32 %9, 2
  %or8.i = or i32 %shl7.i, %.sink.i
  br label %ad5380_info_to_reg.exit

ad5380_info_to_reg.exit:                          ; preds = %return.sink.split.i, %if.end.ad5380_info_to_reg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.ad5380_info_to_reg.exit_crit_edge ], [ %or8.i, %return.sink.split.i ]
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shift, align 1
  %conv6 = zext i8 %11 to i32
  %shl7 = shl i32 %val, %conv6
  %call8 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %retval.0.i, i32 noundef %shl7) #8
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %div = sdiv i32 %shl, 2
  %add = add i32 %div, %val
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl)
  %cmp14.not = icmp uge i32 %add, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp17 = icmp slt i32 %add, 0
  %or.cond43 = or i1 %cmp14.not, %cmp17
  br i1 %or.cond43, label %sw.bb9.cleanup_crit_edge, label %if.end20

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %14 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address, align 4
  %shl22 = shl i32 %15, 2
  %or = or i32 %shl22, 2
  %shift24 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %shift24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift24, align 1
  %conv25 = zext i8 %17 to i32
  %shl26 = shl i32 %add, %conv25
  %call27 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %or, i32 noundef %shl26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %sw.bb9.cleanup_crit_edge, %ad5380_info_to_reg.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end20 ], [ %call8, %ad5380_info_to_reg.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_i2c_probe(ptr noundef %i2c, ptr noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @ad5380_regmap_config, ptr noundef nonnull @ad5380_i2c_probe._key, ptr noundef nonnull @.str.27) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %call3 = tail call fastcc i32 @ad5380_probe(ptr noundef %dev, ptr noundef %call, i32 noundef %2, ptr noundef %id)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5380_i2c_remove(ptr nocapture noundef readonly %i2c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels.i, align 8
  tail call void @kfree(ptr noundef %5) #8
  %vref_reg.i = getelementptr inbounds %struct.ad5380_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref_reg.i, align 4
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.ad5380_remove.exit_crit_edge, label %if.then.i

entry.ad5380_remove.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5380_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @regulator_disable(ptr noundef %7) #8
  br label %ad5380_remove.exit

ad5380_remove.exit:                               ; preds = %if.then.i, %entry.ad5380_remove.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_ad5380__290_642_ad5380_spi_init6, !1, !"__initcall__kmod_ad5380__290_642_ad5380_spi_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5380.c", i32 642, i32 1}
!2 = !{ptr @__exitcall_ad5380_spi_exit, !3, !"__exitcall_ad5380_spi_exit", i1 false, i1 false}
!3 = !{!"../drivers/iio/dac/ad5380.c", i32 650, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/iio/dac/ad5380.c", i32 652, i32 1}
!6 = !{ptr @__UNIQUE_ID_description292, !7, !"__UNIQUE_ID_description292", i1 false, i1 false}
!7 = !{!"../drivers/iio/dac/ad5380.c", i32 653, i32 1}
!8 = !{ptr @__UNIQUE_ID_file293, !9, !"__UNIQUE_ID_file293", i1 false, i1 false}
!9 = !{!"../drivers/iio/dac/ad5380.c", i32 654, i32 1}
!10 = !{ptr @__UNIQUE_ID_license294, !9, !"__UNIQUE_ID_license294", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/dac/ad5380.c", i32 521, i32 14}
!13 = !{ptr @ad5380_spi_driver, !14, !"ad5380_spi_driver", i1 false, i1 false}
!14 = !{!"../drivers/iio/dac/ad5380.c", i32 519, i32 26}
!15 = !{ptr @ad5380_spi_ids, !16, !"ad5380_spi_ids", i1 false, i1 false}
!16 = !{!"../drivers/iio/dac/ad5380.c", i32 498, i32 35}
!17 = !{ptr @ad5380_spi_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/iio/dac/ad5380.c", i32 483, i32 11}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ad5380_regmap_config, !21, !"ad5380_regmap_config", i1 false, i1 false}
!21 = !{!"../drivers/iio/dac/ad5380.c", i32 465, i32 35}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/dac/ad5380.c", i32 379, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ad5380_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ad5380_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ad5380_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/ad5380.c", i32 394, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/dac/ad5380.c", i32 398, i32 3}
!35 = !{ptr @ad5380_probe._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ad5380_probe._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/dac/ad5380.c", i32 405, i32 41}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/dac/ad5380.c", i32 409, i32 4}
!41 = !{ptr @ad5380_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ad5380_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/ad5380.c", i32 426, i32 3}
!45 = !{ptr @ad5380_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ad5380_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/ad5380.c", i32 432, i32 3}
!49 = !{ptr @ad5380_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ad5380_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ad5380_chip_info_tbl, !52, !"ad5380_chip_info_tbl", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/ad5380.c", i32 273, i32 38}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/dac/ad5380.c", i32 245, i32 11}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/dac/ad5380.c", i32 250, i32 2}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/dac/ad5380.c", i32 252, i32 2}
!59 = !{ptr @ad5380_ext_info, !60, !"ad5380_ext_info", i1 false, i1 false}
!60 = !{!"../drivers/iio/dac/ad5380.c", i32 243, i32 44}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/dac/ad5380.c", i32 88, i32 25}
!63 = !{ptr @ad5380_powerdown_mode_enum, !64, !"ad5380_powerdown_mode_enum", i1 false, i1 false}
!64 = !{!"../drivers/iio/dac/ad5380.c", i32 151, i32 30}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/dac/ad5380.c", i32 118, i32 2}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/dac/ad5380.c", i32 119, i32 2}
!69 = !{ptr @ad5380_powerdown_modes, !70, !"ad5380_powerdown_modes", i1 false, i1 false}
!70 = !{!"../drivers/iio/dac/ad5380.c", i32 117, i32 27}
!71 = !{ptr @ad5380_info, !72, !"ad5380_info", i1 false, i1 false}
!72 = !{!"../drivers/iio/dac/ad5380.c", i32 238, i32 30}
!73 = !{ptr @ad5380_i2c_driver, !74, !"ad5380_i2c_driver", i1 false, i1 false}
!74 = !{!"../drivers/iio/dac/ad5380.c", i32 594, i32 26}
!75 = !{ptr @ad5380_i2c_probe._key, !76, !"_key", i1 false, i1 false}
!76 = !{!"../drivers/iio/dac/ad5380.c", i32 558, i32 11}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ad5380_i2c_ids, !79, !"ad5380_i2c_ids", i1 false, i1 false}
!79 = !{!"../drivers/iio/dac/ad5380.c", i32 573, i32 35}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i8 0, i8 2}
!91 = !{!"auto-init"}
