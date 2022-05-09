; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/max1027.c_pt.bc'
source_filename = "../drivers/iio/adc/max1027.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.max1027_chip_info = type { ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.max1027_state = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.completion, [92 x i8], i8, [127 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_max1027__234_645_max1027_driver_init6 = internal global ptr @max1027_driver_init, section ".initcall6.init", align 4
@max1027_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @max1027_id, ptr @max1027_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max1027_adc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max1027_driver_exit = internal global ptr @max1027_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [50 x i8] c"max1027.author=Philippe Reynes <tremyfr@yahoo.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [48 x i8] c"max1027.description=MAX1X27/MAX1X29/MAX1X31 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [37 x i8] c"max1027.file=drivers/iio/adc/max1027\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [23 x i8] c"max1027.license=GPL v2\00", section ".modinfo", align 1
@max1027_id = internal constant { [7 x %struct.spi_device_id], [36 x i8] } { [7 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"max1027\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"max1029\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"max1031\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"max1227\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"max1229\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"max1231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max1027\00", [24 x i8] zeroinitializer }, align 32
@max1027_adc_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1027\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1029\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1031\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1227\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1229\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@max1027_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Can't allocate iio device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max1027_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/adc/max1027.c\00", [38 x i8] zeroinitializer }, align 32
@max1027_probe._entry_ptr = internal global ptr @max1027_probe._entry, section ".printk_index", align 4
@max1027_chip_info_tbl = internal constant { [6 x %struct.max1027_chip_info], [56 x i8] } { [6 x %struct.max1027_chip_info] [%struct.max1027_chip_info { ptr @max1027_channels, i32 9, ptr @max1027_available_scan_masks }, %struct.max1027_chip_info { ptr @max1029_channels, i32 13, ptr @max1029_available_scan_masks }, %struct.max1027_chip_info { ptr @max1031_channels, i32 17, ptr @max1031_available_scan_masks }, %struct.max1027_chip_info { ptr @max1227_channels, i32 9, ptr @max1027_available_scan_masks }, %struct.max1027_chip_info { ptr @max1229_channels, i32 13, ptr @max1029_available_scan_masks }, %struct.max1027_chip_info { ptr @max1231_channels, i32 17, ptr @max1031_available_scan_masks }], [56 x i8] zeroinitializer }, align 32
@max1027_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@max1027_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @max1027_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max1027_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max1027_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 579, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to setup buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max1027_probe._entry_ptr.9 = internal global ptr @max1027_probe._entry.5, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-trigger\00", [21 x i8] zeroinitializer }, align 32
@max1027_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 590, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate iio trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@max1027_probe._entry_ptr.13 = internal global ptr @max1027_probe._entry.11, section ".printk_index", align 4
@max1027_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @max1027_set_cnvst_trigger_state, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@max1027_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 600, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register iio trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@max1027_probe._entry_ptr.16 = internal global ptr @max1027_probe._entry.14, section ".printk_index", align 4
@max1027_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate IRQ.\0A\00", [39 x i8] zeroinitializer }, align 32
@max1027_probe._entry_ptr.19 = internal global ptr @max1027_probe._entry.17, section ".printk_index", align 4
@max1027_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 617, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to reset the ADC\0A\00", [39 x i8] zeroinitializer }, align 32
@max1027_probe._entry_ptr.22 = internal global ptr @max1027_probe._entry.20, section ".printk_index", align 4
@max1027_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 625, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to configure averaging register\0A\00", [56 x i8] zeroinitializer }, align 32
@max1027_probe._entry_ptr.25 = internal global ptr @max1027_probe._entry.23, section ".printk_index", align 4
@max1027_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 6, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 7, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 8, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [200 x i8] zeroinitializer }, align 32
@max1027_available_scan_masks = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 2, i32 6, i32 14, i32 30, i32 62, i32 126, i32 254, i32 510, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 0], [60 x i8] zeroinitializer }, align 32
@max1029_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 6, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 7, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 8, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 9, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 10, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 11, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 12, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [264 x i8] zeroinitializer }, align 32
@max1029_available_scan_masks = internal constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 2, i32 6, i32 14, i32 30, i32 62, i32 126, i32 254, i32 510, i32 1022, i32 2046, i32 4094, i32 8190, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 0], [60 x i8] zeroinitializer }, align 32
@max1031_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 6, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 7, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 8, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 9, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 10, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 11, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 12, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 0, i32 13, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 0, i32 14, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 15, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 0, i32 16, %struct.anon.71 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [360 x i8] zeroinitializer }, align 32
@max1031_available_scan_masks = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 2, i32 6, i32 14, i32 30, i32 62, i32 126, i32 254, i32 510, i32 1022, i32 2046, i32 4094, i32 8190, i32 16382, i32 32766, i32 65534, i32 131070, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 0], [60 x i8] zeroinitializer }, align 32
@max1227_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 6, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 7, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 8, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [200 x i8] zeroinitializer }, align 32
@max1229_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 6, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 7, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 8, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 9, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 10, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 11, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 12, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [264 x i8] zeroinitializer }, align 32
@max1231_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 6, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 7, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 8, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 9, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 10, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 11, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 12, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 0, i32 13, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 0, i32 14, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 0, i32 15, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 0, i32 16, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [360 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@max1027_read_single_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 351, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to configure conversion register\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max1027_read_single_value\00", [38 x i8] zeroinitializer }, align 32
@max1027_read_single_value._entry_ptr = internal global ptr @max1027_read_single_value._entry, section ".printk_index", align 4
@max1027_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 524, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot read scanned values (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max1027_trigger_handler\00", [40 x i8] zeroinitializer }, align 32
@max1027_trigger_handler._entry_ptr = internal global ptr @max1027_trigger_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"max1027_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 637, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"max1027_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 75, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 639, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"max1027_adc_dt_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 86, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 549, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"max1027_chip_info_tbl\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 234, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 557, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"max1027_info\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 536, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 579, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 585, i32 48 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 589, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"max1027_trigger_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 531, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 599, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 608, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 617, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 625, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"max1027_channels\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 154, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [29 x i8] c"max1027_available_scan_masks\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 210, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"max1029_channels\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 158, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [29 x i8] c"max1029_available_scan_masks\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 216, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"max1031_channels\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 162, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant [29 x i8] c"max1031_available_scan_masks\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 222, i32 28 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"max1227_channels\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 166, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"max1229_channels\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 170, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"max1231_channels\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 174, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 87, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 350, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [29 x i8] c"../drivers/iio/adc/max1027.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 523, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_max1027_driver_exit, ptr @__initcall__kmod_max1027__234_645_max1027_driver_init6, ptr @max1027_driver_exit, ptr @max1027_probe._entry, ptr @max1027_probe._entry.11, ptr @max1027_probe._entry.14, ptr @max1027_probe._entry.17, ptr @max1027_probe._entry.20, ptr @max1027_probe._entry.23, ptr @max1027_probe._entry.5, ptr @max1027_probe._entry_ptr, ptr @max1027_probe._entry_ptr.13, ptr @max1027_probe._entry_ptr.16, ptr @max1027_probe._entry_ptr.19, ptr @max1027_probe._entry_ptr.22, ptr @max1027_probe._entry_ptr.25, ptr @max1027_probe._entry_ptr.9, ptr @max1027_read_single_value._entry, ptr @max1027_read_single_value._entry_ptr, ptr @max1027_trigger_handler._entry, ptr @max1027_trigger_handler._entry_ptr, ptr @max1027_driver, ptr @max1027_id, ptr @.str, ptr @max1027_adc_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @max1027_chip_info_tbl, ptr @max1027_probe.__key, ptr @.str.4, ptr @max1027_info, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @max1027_trigger_ops, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @max1027_channels, ptr @max1027_available_scan_masks, ptr @max1029_channels, ptr @max1029_available_scan_masks, ptr @max1031_channels, ptr @max1031_available_scan_masks, ptr @max1227_channels, ptr @max1229_channels, ptr @max1231_channels, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_id to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_adc_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_chip_info_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_available_scan_masks to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1029_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1029_available_scan_masks to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1031_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1031_available_scan_masks to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1227_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1229_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1231_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_read_single_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1027_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max1027_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max1027_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max1027_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max1027_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1027_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i162 = alloca %struct.spi_message, align 4
  %t.i163 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spi3 = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %spi3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %spi3, align 4
  %call4 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call4, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [6 x %struct.max1027_chip_info], ptr @max1027_chip_info_tbl, i32 0, i32 %4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %1, align 128
  %lock = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @max1027_probe.__key) #6
  %complete = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #6
  %call8 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %name9 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %name9, align 8
  %info10 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %info10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @max1027_info, ptr %info10, align 8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %channels12 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %channels12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %channels12, align 8
  %15 = load ptr, ptr %1, align 128
  %num_channels = getelementptr inbounds %struct.max1027_chip_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_channels, align 4
  %num_channels14 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_channels14, align 4
  %19 = load ptr, ptr %1, align 128
  %available_scan_masks = getelementptr inbounds %struct.max1027_chip_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %available_scan_masks, align 4
  %available_scan_masks16 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %available_scan_masks16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %available_scan_masks16, align 4
  %dev17 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 2) #6
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !101

devm_kmalloc_array.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %buffer175 = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %buffer175 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %buffer175, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end
  %26 = extractvalue { i32, i1 } %23, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev17, i32 noundef %26, i32 noundef 3264) #6
  %buffer = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i, ptr %buffer, align 4
  %tobool21.not = icmp eq ptr %call5.i, null
  br i1 %tobool21.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %if.end23

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %devm_kmalloc_array.exit
  %call25 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @max1027_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool32.not = icmp eq i32 %29, 0
  br i1 %tobool32.not, label %if.end31.if.end69_crit_edge, label %if.then33

if.end31.if.end69_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then33:                                        ; preds = %if.end31
  %30 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name9, align 8
  %call36 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %spi, ptr noundef nonnull @.str.10, ptr noundef %31) #6
  %trig = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call36, ptr %trig, align 8
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end44:                                         ; preds = %if.then33
  %33 = ptrtoint ptr %call36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @max1027_trigger_ops, ptr %call36, align 8
  %34 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trig, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %35, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call, ptr %driver_data.i.i, align 4
  %37 = load ptr, ptr %trig, align 8
  %call49 = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev17, ptr noundef %37, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 6
  %40 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %39, ptr noundef nonnull @max1027_handler, ptr noundef null, i32 noundef 2, ptr noundef %43, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp62 = icmp slt i32 %call.i, 0
  br i1 %cmp62, label %do.end66, label %if.end56.if.end69_crit_edge

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.end66:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end69:                                         ; preds = %if.end56.if.end69_crit_edge, %if.end31.if.end69_crit_edge
  %reg = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %reg, align 128
  %45 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi3, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %47 = getelementptr inbounds i8, ptr %t.i, i32 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 92)
  %49 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %reg, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %50 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %51 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %52 = call ptr @memset(ptr %51, i32 0, i32 40)
  %53 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %55 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end69.spi_write.exit_crit_edge

if.end69.spi_write.exit_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %58 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end69.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %46, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp73 = icmp slt i32 %call.i.i, 0
  br i1 %cmp73, label %do.end77, label %if.end79

do.end77:                                         ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end79:                                         ; preds = %spi_write.exit
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 32, ptr %reg, align 128
  %62 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spi3, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i163) #6
  %64 = getelementptr inbounds i8, ptr %t.i163, i32 4
  %65 = call ptr @memset(ptr %64, i32 0, i32 92)
  %66 = ptrtoint ptr %t.i163 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %reg, ptr %t.i163, align 4
  %len1.i164 = getelementptr inbounds %struct.spi_transfer, ptr %t.i163, i32 0, i32 2
  %67 = ptrtoint ptr %len1.i164 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %len1.i164, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i162) #6
  %68 = getelementptr inbounds i8, ptr %msg.i.i162, i32 8
  %69 = call ptr @memset(ptr %68, i32 0, i32 40)
  %70 = ptrtoint ptr %msg.i.i162 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %msg.i.i162, ptr %msg.i.i162, align 4
  %prev.i.i.i.i.i.i165 = getelementptr inbounds %struct.list_head, ptr %msg.i.i162, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i162, ptr %prev.i.i.i.i.i.i165, align 4
  %resources.i.i.i.i.i166 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i162, i32 0, i32 10
  %72 = ptrtoint ptr %resources.i.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %resources.i.i.i.i.i166, ptr %resources.i.i.i.i.i166, align 4
  %prev.i2.i.i.i.i.i167 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i162, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %prev.i2.i.i.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %resources.i.i.i.i.i166, ptr %prev.i2.i.i.i.i.i167, align 4
  %transfer_list.i.i.i.i168 = getelementptr inbounds %struct.spi_transfer, ptr %t.i163, i32 0, i32 18
  %call.i.i.i.i.i.i169 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i168, ptr noundef nonnull %msg.i.i162, ptr noundef nonnull %msg.i.i162) #6
  br i1 %call.i.i.i.i.i.i169, label %if.end.i.i.i.i.i.i171, label %if.end79.spi_write.exit173_crit_edge

if.end79.spi_write.exit173_crit_edge:             ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit173

if.end.i.i.i.i.i.i171:                            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %prev.i.i.i.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %transfer_list.i.i.i.i168, ptr %prev.i.i.i.i.i.i165, align 4
  %75 = ptrtoint ptr %transfer_list.i.i.i.i168 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i162, ptr %transfer_list.i.i.i.i168, align 4
  %prev3.i.i.i.i.i.i170 = getelementptr inbounds %struct.spi_transfer, ptr %t.i163, i32 0, i32 18, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i162, ptr %prev3.i.i.i.i.i.i170, align 4
  %77 = ptrtoint ptr %msg.i.i162 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %transfer_list.i.i.i.i168, ptr %msg.i.i162, align 4
  br label %spi_write.exit173

spi_write.exit173:                                ; preds = %if.end.i.i.i.i.i.i171, %if.end79.spi_write.exit173_crit_edge
  %call.i.i172 = call i32 @spi_sync(ptr noundef %63, ptr noundef nonnull %msg.i.i162) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i162) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i163) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %cmp84 = icmp slt i32 %call.i.i172, 0
  br i1 %cmp84, label %do.end88, label %if.end90

do.end88:                                         ; preds = %spi_write.exit173
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end90:                                         ; preds = %spi_write.exit173
  %78 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv.i, align 8
  %reg.i = getelementptr inbounds %struct.max1027_state, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 104, ptr %reg.i, align 128
  %spi.i = getelementptr inbounds %struct.max1027_state, ptr %79, i32 0, i32 1
  %81 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %83 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %84 = call ptr @memset(ptr %83, i32 0, i32 92)
  %85 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %reg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %87 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %88 = call ptr @memset(ptr %87, i32 0, i32 40)
  %89 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %91 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %92 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end90.max1027_enable_trigger.exit_crit_edge

if.end90.max1027_enable_trigger.exit_crit_edge:   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %max1027_enable_trigger.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %94 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %96 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %max1027_enable_trigger.exit

max1027_enable_trigger.exit:                      ; preds = %if.end.i.i.i.i.i.i.i, %if.end90.max1027_enable_trigger.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %82, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool92.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool92.not, label %if.end94, label %max1027_enable_trigger.exit.cleanup_crit_edge

max1027_enable_trigger.exit.cleanup_crit_edge:    ; preds = %max1027_enable_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end94:                                         ; preds = %max1027_enable_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %max1027_enable_trigger.exit.cleanup_crit_edge, %do.end88, %do.end77, %do.end66, %do.end54, %if.then39, %do.end29, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %do.end
  %retval.0 = phi i32 [ %call25, %do.end29 ], [ %call49, %do.end54 ], [ %call.i, %do.end66 ], [ %call.i.i, %do.end77 ], [ %call.i.i172, %do.end88 ], [ %call96, %if.end94 ], [ -12, %if.then39 ], [ -12, %do.end ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ %call.i.i.i, %max1027_enable_trigger.exit.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1027_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %msg.i.i.i27 = alloca %struct.spi_message, align 4
  %t.i.i28 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %1) #6
  br i1 %call, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %reg.i = getelementptr inbounds %struct.max1027_state, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %reg.i, align 128
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_scan_mask.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 true) #6, !range !102
  %10 = trunc i32 %9 to i8
  %.neg.i = mul i8 %10, 120
  %.neg.op.i = add i8 %.neg.i, 112
  %.neg.op.op.i = or i8 %.neg.op.i, -128
  %conv3.i = select i1 %tobool.not.i.i, i8 -16, i8 %.neg.op.op.i
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3.i, ptr %reg.i, align 128
  %12 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active_scan_mask.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %16 = or i8 %conv3.i, 1
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %reg.i, align 128
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %spi.i = getelementptr inbounds %struct.max1027_state, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %20 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 92)
  %22 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %reg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i.max1027_configure_chans_and_start.exit_crit_edge

if.end.i.max1027_configure_chans_and_start.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max1027_configure_chans_and_start.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %max1027_configure_chans_and_start.exit

max1027_configure_chans_and_start.exit:           ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i.max1027_configure_chans_and_start.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %max1027_configure_chans_and_start.exit.do.end_crit_edge

max1027_configure_chans_and_start.exit.do.end_crit_edge: ; preds = %max1027_configure_chans_and_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %max1027_configure_chans_and_start.exit
  %34 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv.i.i, align 8
  %spi.i22 = getelementptr inbounds %struct.max1027_state, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %spi.i22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi.i22, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i23 = icmp eq i32 %39, 0
  br i1 %tobool.not.i23, label %if.else.i, label %if.then.i24

if.then.i24:                                      ; preds = %if.end
  %complete.i = getelementptr inbounds %struct.max1027_state, ptr %35, i32 0, i32 5
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 100) #6
  %40 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %complete.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not.i, label %if.then.i24.do.end_crit_edge, label %if.then.i24.if.end8_crit_edge

if.then.i24.if.end8_crit_edge:                    ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then.i24.do.end_crit_edge:                     ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.else.i:                                        ; preds = %if.end
  %41 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %active_scan_mask.i, align 4
  %tobool6.not.i = icmp eq ptr %42, null
  br i1 %tobool6.not.i, label %if.else.i.if.end323.i_crit_edge, label %cond.false.i

if.else.i.if.end323.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end323.i

cond.false.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %call.i.i = call i32 @__sw_hweight32(i32 noundef %44) #6
  %mul.i = shl i32 %call.i.i, 2
  br label %if.end323.i

if.end323.i:                                      ; preds = %cond.false.i, %if.else.i.if.end323.i_crit_edge
  %conversion_time.0.i = phi i32 [ %mul.i, %cond.false.i ], [ 4, %if.else.i.if.end323.i_crit_edge ]
  %mul324.i = shl i32 %conversion_time.0.i, 1
  call void @usleep_range_state(i32 noundef %conversion_time.0.i, i32 noundef %mul324.i, i32 noundef 2) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end323.i, %if.then.i24.if.end8_crit_edge, %entry.if.end8_crit_edge
  %priv.i.i29 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %priv.i.i29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i.i29, align 8
  %active_scan_mask.i30 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %active_scan_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active_scan_mask.i30, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i31 = icmp eq i32 %50, 0
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 true) #6, !range !102
  %sub.i.i = sub nuw nsw i32 32, %51
  %cond.i.i = select i1 %tobool.not.i.i31, i32 0, i32 %sub.i.i
  %and.i32 = and i32 %50, 1
  %sext.i = add nsw i32 %and.i32, -1
  %spec.select.i = add nsw i32 %sext.i, %cond.i.i
  %spi.i33 = getelementptr inbounds %struct.max1027_state, ptr %46, i32 0, i32 1
  %52 = ptrtoint ptr %spi.i33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi.i33, align 4
  %buffer.i = getelementptr inbounds %struct.max1027_state, ptr %46, i32 0, i32 3
  %54 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer.i, align 4
  %mul.i34 = shl nsw i32 %spec.select.i, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i28) #6
  %56 = call ptr @memset(ptr %t.i.i28, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i28, i32 0, i32 1
  %57 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %rx_buf.i.i, align 4
  %len1.i.i35 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i28, i32 0, i32 2
  %58 = ptrtoint ptr %len1.i.i35 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul.i34, ptr %len1.i.i35, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i27) #6
  %59 = getelementptr inbounds i8, ptr %msg.i.i.i27, i32 8
  %60 = call ptr @memset(ptr %59, i32 0, i32 40)
  %61 = ptrtoint ptr %msg.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %msg.i.i.i27, ptr %msg.i.i.i27, align 4
  %prev.i.i.i.i.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i27, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i27, ptr %prev.i.i.i.i.i.i.i36, align 4
  %resources.i.i.i.i.i.i37 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i27, i32 0, i32 10
  %63 = ptrtoint ptr %resources.i.i.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %resources.i.i.i.i.i.i37, ptr %resources.i.i.i.i.i.i37, align 4
  %prev.i2.i.i.i.i.i.i38 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i27, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resources.i.i.i.i.i.i37, ptr %prev.i2.i.i.i.i.i.i38, align 4
  %transfer_list.i.i.i.i.i39 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i28, i32 0, i32 18
  %call.i.i.i.i.i.i.i40 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i39, ptr noundef nonnull %msg.i.i.i27, ptr noundef nonnull %msg.i.i.i27) #6
  br i1 %call.i.i.i.i.i.i.i40, label %if.end.i.i.i.i.i.i.i42, label %if.end8.spi_read.exit.i_crit_edge

if.end8.spi_read.exit.i_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i.i42:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %prev.i.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %transfer_list.i.i.i.i.i39, ptr %prev.i.i.i.i.i.i.i36, align 4
  %66 = ptrtoint ptr %transfer_list.i.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %msg.i.i.i27, ptr %transfer_list.i.i.i.i.i39, align 4
  %prev3.i.i.i.i.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i28, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i27, ptr %prev3.i.i.i.i.i.i.i41, align 4
  %68 = ptrtoint ptr %msg.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %transfer_list.i.i.i.i.i39, ptr %msg.i.i.i27, align 4
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i.i42, %if.end8.spi_read.exit.i_crit_edge
  %call.i.i.i43 = call i32 @spi_sync(ptr noundef %53, ptr noundef nonnull %msg.i.i.i27) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i27) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i43)
  %cmp.i = icmp slt i32 %call.i.i.i43, 0
  br i1 %cmp.i, label %spi_read.exit.i.do.end_crit_edge, label %out

spi_read.exit.i.do.end_crit_edge:                 ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

out:                                              ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buffer.i, align 4
  %call7.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %70) #6
  br label %if.end12

do.end:                                           ; preds = %spi_read.exit.i.do.end_crit_edge, %if.then.i24.do.end_crit_edge, %max1027_configure_chans_and_start.exit.do.end_crit_edge
  %ret.0.ph = phi i32 [ %call.i.i.i43, %spi_read.exit.i.do.end_crit_edge ], [ -110, %if.then.i24.do.end_crit_edge ], [ %call.i.i.i, %max1027_configure_chans_and_start.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %ret.0.ph) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end, %out
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %71 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %72) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1027_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 1
  %0 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %1, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %complete = getelementptr inbounds %struct.max1027_state, ptr %3, i32 0, i32 5
  tail call void @complete(ptr noundef %complete) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 10
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1027_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i53.i = alloca %struct.spi_message, align 4
  %t.i54.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.sw.epilog6_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog6_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog6

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %call1.i = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog6_crit_edge

sw.bb.sw.epilog6_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog6

if.end.i:                                         ; preds = %sw.bb
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel.i, align 4
  %.tr.i = trunc i32 %6 to i8
  %7 = shl i8 %.tr.i, 3
  %conv.i = or i8 %7, -122
  %reg.i = getelementptr inbounds %struct.max1027_state, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %reg.i, align 128
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %cmp.i = icmp eq i32 %10, 9
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i8 %7, -121
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %reg.i, align 128
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %if.end.i.if.end9.i_crit_edge
  %spi.i = getelementptr inbounds %struct.max1027_state, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %15 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end9.i.spi_write.exit.i_crit_edge

if.end9.i.spi_write.exit.i_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end9.i.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp12.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #9
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %sw.epilog6

if.end15.i:                                       ; preds = %spi_write.exit.i
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i, align 8
  %spi.i.i = getelementptr inbounds %struct.max1027_state, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi.i.i, align 4
  %irq.i.i = getelementptr inbounds %struct.spi_device, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end15.i
  %complete.i.i = getelementptr inbounds %struct.max1027_state, ptr %30, i32 0, i32 5
  %call2.i.i = call i32 @wait_for_completion_timeout(ptr noundef %complete.i.i, i32 noundef 100) #6
  %35 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %complete.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool4.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.sw.epilog6_crit_edge, label %if.then.i.i.if.end19.i_crit_edge

if.then.i.i.if.end19.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then.i.i.sw.epilog6_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog6

if.else.i.i:                                      ; preds = %if.end15.i
  %active_scan_mask.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %36 = ptrtoint ptr %active_scan_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %active_scan_mask.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %37, null
  br i1 %tobool6.not.i.i, label %if.else.i.i.if.end323.i.i_crit_edge, label %cond.false.i.i

if.else.i.i.if.end323.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end323.i.i

cond.false.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %call.i.i52.i = call i32 @__sw_hweight32(i32 noundef %39) #6
  %mul.i.i = shl i32 %call.i.i52.i, 2
  br label %if.end323.i.i

if.end323.i.i:                                    ; preds = %cond.false.i.i, %if.else.i.i.if.end323.i.i_crit_edge
  %conversion_time.0.i.i = phi i32 [ %mul.i.i, %cond.false.i.i ], [ 4, %if.else.i.i.if.end323.i.i_crit_edge ]
  %mul324.i.i = shl i32 %conversion_time.0.i.i, 1
  call void @usleep_range_state(i32 noundef %conversion_time.0.i.i, i32 noundef %mul324.i.i, i32 noundef 2) #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end323.i.i, %if.then.i.i.if.end19.i_crit_edge
  %40 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi.i, align 4
  %buffer.i = getelementptr inbounds %struct.max1027_state, ptr %4, i32 0, i32 3
  %42 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer.i, align 4
  %44 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %45)
  %cmp22.i = icmp eq i32 %45, 9
  %cond.i = select i1 %cmp22.i, i32 4, i32 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i54.i) #6
  %46 = call ptr @memset(ptr %t.i54.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i54.i, i32 0, i32 1
  %47 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %43, ptr %rx_buf.i.i, align 4
  %len1.i55.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i54.i, i32 0, i32 2
  %48 = ptrtoint ptr %len1.i55.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond.i, ptr %len1.i55.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i53.i) #6
  %49 = getelementptr inbounds i8, ptr %msg.i.i53.i, i32 8
  %50 = call ptr @memset(ptr %49, i32 0, i32 40)
  %51 = ptrtoint ptr %msg.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %msg.i.i53.i, ptr %msg.i.i53.i, align 4
  %prev.i.i.i.i.i.i56.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i53.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i53.i, ptr %prev.i.i.i.i.i.i56.i, align 4
  %resources.i.i.i.i.i57.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i53.i, i32 0, i32 10
  %53 = ptrtoint ptr %resources.i.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %resources.i.i.i.i.i57.i, ptr %resources.i.i.i.i.i57.i, align 4
  %prev.i2.i.i.i.i.i58.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i53.i, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %prev.i2.i.i.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %resources.i.i.i.i.i57.i, ptr %prev.i2.i.i.i.i.i58.i, align 4
  %transfer_list.i.i.i.i59.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i54.i, i32 0, i32 18
  %call.i.i.i.i.i.i60.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i59.i, ptr noundef nonnull %msg.i.i53.i, ptr noundef nonnull %msg.i.i53.i) #6
  br i1 %call.i.i.i.i.i.i60.i, label %if.end.i.i.i.i.i.i62.i, label %if.end19.i.spi_read.exit.i_crit_edge

if.end19.i.spi_read.exit.i_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i62.i:                           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %prev.i.i.i.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %transfer_list.i.i.i.i59.i, ptr %prev.i.i.i.i.i.i56.i, align 4
  %56 = ptrtoint ptr %transfer_list.i.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i53.i, ptr %transfer_list.i.i.i.i59.i, align 4
  %prev3.i.i.i.i.i.i61.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i54.i, i32 0, i32 18, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.i.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msg.i.i53.i, ptr %prev3.i.i.i.i.i.i61.i, align 4
  %58 = ptrtoint ptr %msg.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %transfer_list.i.i.i.i59.i, ptr %msg.i.i53.i, align 4
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i62.i, %if.end19.i.spi_read.exit.i_crit_edge
  %call.i.i63.i = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %msg.i.i53.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i53.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i54.i) #6
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63.i)
  %cmp25.i = icmp slt i32 %call.i.i63.i, 0
  br i1 %cmp25.i, label %spi_read.exit.i.sw.epilog6_crit_edge, label %if.end28.i

spi_read.exit.i.sw.epilog6_crit_edge:             ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog6

if.end28.i:                                       ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %60, align 2
  %conv30.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv30.i, ptr %val, align 4
  br label %sw.epilog6

sw.bb2:                                           ; preds = %entry
  %64 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chan, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %65, label %sw.bb2.sw.epilog6_crit_edge [
    i32 9, label %sw.bb3
    i32 0, label %sw.bb4
  ]

sw.bb2.sw.epilog6_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog6

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %val, align 4
  %68 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 8, ptr %val2, align 4
  br label %sw.epilog6

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2500, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %realbits, align 1
  %conv = zext i8 %71 to i32
  %72 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv, ptr %val2, align 4
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb4, %sw.bb3, %sw.bb2.sw.epilog6_crit_edge, %if.end28.i, %spi_read.exit.i.sw.epilog6_crit_edge, %if.then.i.i.sw.epilog6_crit_edge, %do.end.i, %sw.bb.sw.epilog6_crit_edge, %entry.sw.epilog6_crit_edge
  %ret.0 = phi i32 [ 11, %sw.bb4 ], [ 10, %sw.bb3 ], [ -22, %sw.bb2.sw.epilog6_crit_edge ], [ -22, %entry.sw.epilog6_crit_edge ], [ %call.i.i.i, %do.end.i ], [ 1, %if.end28.i ], [ %call1.i, %sw.bb.sw.epilog6_crit_edge ], [ %call.i.i63.i, %spi_read.exit.i.sw.epilog6_crit_edge ], [ -110, %if.then.i.i.sw.epilog6_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1027_debugfs_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  %msg.i.i13 = alloca %struct.spi_message, align 4
  %t.i14 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buffer = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %readval, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %spi = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %6 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.spi_read.exit_crit_edge

if.then.spi_read.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
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

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %if.then.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  %conv = zext i16 %22 to i32
  %23 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %readval, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = trunc i32 %writeval to i8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv3, ptr %3, align 1
  %spi4 = getelementptr inbounds %struct.max1027_state, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %spi4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi4, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i14) #6
  %27 = getelementptr inbounds i8, ptr %t.i14, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 92)
  %29 = ptrtoint ptr %t.i14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %t.i14, align 4
  %len1.i15 = getelementptr inbounds %struct.spi_transfer, ptr %t.i14, i32 0, i32 2
  %30 = ptrtoint ptr %len1.i15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %len1.i15, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i13) #6
  %31 = getelementptr inbounds i8, ptr %msg.i.i13, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 40)
  %33 = ptrtoint ptr %msg.i.i13 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %msg.i.i13, ptr %msg.i.i13, align 4
  %prev.i.i.i.i.i.i16 = getelementptr inbounds %struct.list_head, ptr %msg.i.i13, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i13, ptr %prev.i.i.i.i.i.i16, align 4
  %resources.i.i.i.i.i17 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i13, i32 0, i32 10
  %35 = ptrtoint ptr %resources.i.i.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %resources.i.i.i.i.i17, ptr %resources.i.i.i.i.i17, align 4
  %prev.i2.i.i.i.i.i18 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i13, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i2.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %resources.i.i.i.i.i17, ptr %prev.i2.i.i.i.i.i18, align 4
  %transfer_list.i.i.i.i19 = getelementptr inbounds %struct.spi_transfer, ptr %t.i14, i32 0, i32 18
  %call.i.i.i.i.i.i20 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i19, ptr noundef nonnull %msg.i.i13, ptr noundef nonnull %msg.i.i13) #6
  br i1 %call.i.i.i.i.i.i20, label %if.end.i.i.i.i.i.i22, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i22:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i.i.i.i19, ptr %prev.i.i.i.i.i.i16, align 4
  %38 = ptrtoint ptr %transfer_list.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i13, ptr %transfer_list.i.i.i.i19, align 4
  %prev3.i.i.i.i.i.i21 = getelementptr inbounds %struct.spi_transfer, ptr %t.i14, i32 0, i32 18, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i13, ptr %prev3.i.i.i.i.i.i21, align 4
  %40 = ptrtoint ptr %msg.i.i13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i.i.i.i19, ptr %msg.i.i13, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i22, %if.end.spi_write.exit_crit_edge
  %call.i.i23 = call i32 @spi_sync(ptr noundef %26, ptr noundef nonnull %msg.i.i13) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i13) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i14) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %spi_read.exit
  %retval.0 = phi i32 [ %call.i.i, %spi_read.exit ], [ %call.i.i23, %spi_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_trigger_using_own(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1027_set_cnvst_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  %msg.i.i.i16 = alloca %struct.spi_message, align 4
  %t.i.i17 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %reg.i = getelementptr inbounds %struct.max1027_state, ptr %3, i32 0, i32 7
  %..i = select i1 %state, i8 72, i8 104
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %..i, ptr %reg.i, align 128
  %spi.i = getelementptr inbounds %struct.max1027_state, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %7 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.max1027_enable_trigger.exit_crit_edge

entry.max1027_enable_trigger.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max1027_enable_trigger.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %max1027_enable_trigger.exit

max1027_enable_trigger.exit:                      ; preds = %if.end.i.i.i.i.i.i.i, %entry.max1027_enable_trigger.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not, label %if.end, label %max1027_enable_trigger.exit.cleanup_crit_edge

max1027_enable_trigger.exit.cleanup_crit_edge:    ; preds = %max1027_enable_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %max1027_enable_trigger.exit
  br i1 %state, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %21 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i.i, align 8
  %reg.i19 = getelementptr inbounds %struct.max1027_state, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %reg.i19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -128, ptr %reg.i19, align 128
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %active_scan_mask.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  %28 = call i32 @llvm.ctlz.i32(i32 %27, i1 true) #6, !range !102
  %29 = trunc i32 %28 to i8
  %.neg.i = mul i8 %29, 120
  %.neg.op.i = add i8 %.neg.i, 112
  %.neg.op.op.i = or i8 %.neg.op.i, -128
  %conv3.i = select i1 %tobool.not.i.i, i8 -16, i8 %.neg.op.op.i
  %30 = ptrtoint ptr %reg.i19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv3.i, ptr %reg.i19, align 128
  %31 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %active_scan_mask.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.if.end.i_crit_edge, label %if.then.i

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %35 = or i8 %conv3.i, 1
  %36 = ptrtoint ptr %reg.i19 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %reg.i19, align 128
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then4.if.end.i_crit_edge
  %spi.i20 = getelementptr inbounds %struct.max1027_state, ptr %22, i32 0, i32 1
  %37 = ptrtoint ptr %spi.i20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi.i20, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i17) #6
  %39 = getelementptr inbounds i8, ptr %t.i.i17, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 92)
  %41 = ptrtoint ptr %t.i.i17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %reg.i19, ptr %t.i.i17, align 4
  %len1.i.i21 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 2
  %42 = ptrtoint ptr %len1.i.i21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %len1.i.i21, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i16) #6
  %43 = getelementptr inbounds i8, ptr %msg.i.i.i16, i32 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 40)
  %45 = ptrtoint ptr %msg.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %msg.i.i.i16, ptr %msg.i.i.i16, align 4
  %prev.i.i.i.i.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i16, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i16, ptr %prev.i.i.i.i.i.i.i22, align 4
  %resources.i.i.i.i.i.i23 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i16, i32 0, i32 10
  %47 = ptrtoint ptr %resources.i.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %resources.i.i.i.i.i.i23, ptr %resources.i.i.i.i.i.i23, align 4
  %prev.i2.i.i.i.i.i.i24 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i16, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i2.i.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resources.i.i.i.i.i.i23, ptr %prev.i2.i.i.i.i.i.i24, align 4
  %transfer_list.i.i.i.i.i25 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 18
  %call.i.i.i.i.i.i.i26 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i25, ptr noundef nonnull %msg.i.i.i16, ptr noundef nonnull %msg.i.i.i16) #6
  br i1 %call.i.i.i.i.i.i.i26, label %if.end.i.i.i.i.i.i.i28, label %if.end.i.max1027_configure_chans_and_start.exit_crit_edge

if.end.i.max1027_configure_chans_and_start.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max1027_configure_chans_and_start.exit

if.end.i.i.i.i.i.i.i28:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %prev.i.i.i.i.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i.i.i.i.i25, ptr %prev.i.i.i.i.i.i.i22, align 4
  %50 = ptrtoint ptr %transfer_list.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i16, ptr %transfer_list.i.i.i.i.i25, align 4
  %prev3.i.i.i.i.i.i.i27 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i16, ptr %prev3.i.i.i.i.i.i.i27, align 4
  %52 = ptrtoint ptr %msg.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i.i.i.i.i25, ptr %msg.i.i.i16, align 4
  br label %max1027_configure_chans_and_start.exit

max1027_configure_chans_and_start.exit:           ; preds = %if.end.i.i.i.i.i.i.i28, %if.end.i.max1027_configure_chans_and_start.exit_crit_edge
  %call.i.i.i29 = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %msg.i.i.i16) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i16) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i29)
  %tobool6.not = icmp eq i32 %call.i.i.i29, 0
  br i1 %tobool6.not, label %max1027_configure_chans_and_start.exit.if.end9_crit_edge, label %max1027_configure_chans_and_start.exit.cleanup_crit_edge

max1027_configure_chans_and_start.exit.cleanup_crit_edge: ; preds = %max1027_configure_chans_and_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

max1027_configure_chans_and_start.exit.if.end9_crit_edge: ; preds = %max1027_configure_chans_and_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %max1027_configure_chans_and_start.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %max1027_configure_chans_and_start.exit.cleanup_crit_edge, %max1027_enable_trigger.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call.i.i.i, %max1027_enable_trigger.exit.cleanup_crit_edge ], [ %call.i.i.i29, %max1027_configure_chans_and_start.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_max1027__234_645_max1027_driver_init6, !1, !"__initcall__kmod_max1027__234_645_max1027_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/max1027.c", i32 645, i32 1}
!2 = !{ptr @__exitcall_max1027_driver_exit, !1, !"__exitcall_max1027_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/max1027.c", i32 647, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/max1027.c", i32 648, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/max1027.c", i32 649, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/max1027.c", i32 639, i32 11}
!12 = !{ptr @max1027_driver, !13, !"max1027_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/max1027.c", i32 637, i32 26}
!14 = !{ptr @max1027_id, !15, !"max1027_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/max1027.c", i32 75, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/max1027.c", i32 549, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max1027_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @max1027_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @max1027_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/max1027.c", i32 557, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/max1027.c", i32 579, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @max1027_probe._entry.5, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @max1027_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/max1027.c", i32 585, i32 48}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/max1027.c", i32 589, i32 4}
!35 = !{ptr @max1027_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max1027_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/max1027.c", i32 599, i32 4}
!39 = !{ptr @max1027_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @max1027_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/max1027.c", i32 608, i32 4}
!43 = !{ptr @max1027_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @max1027_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/max1027.c", i32 617, i32 3}
!47 = !{ptr @max1027_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @max1027_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/max1027.c", i32 625, i32 3}
!51 = !{ptr @max1027_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @max1027_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @max1027_chip_info_tbl, !54, !"max1027_chip_info_tbl", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/max1027.c", i32 234, i32 39}
!55 = !{ptr @max1027_channels, !56, !"max1027_channels", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/max1027.c", i32 154, i32 35}
!57 = !{ptr @max1027_available_scan_masks, !58, !"max1027_available_scan_masks", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/max1027.c", i32 210, i32 28}
!59 = !{ptr @max1029_channels, !60, !"max1029_channels", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/max1027.c", i32 158, i32 35}
!61 = !{ptr @max1029_available_scan_masks, !62, !"max1029_available_scan_masks", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/max1027.c", i32 216, i32 28}
!63 = !{ptr @max1031_channels, !64, !"max1031_channels", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/max1027.c", i32 162, i32 35}
!65 = !{ptr @max1031_available_scan_masks, !66, !"max1031_available_scan_masks", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/max1027.c", i32 222, i32 28}
!67 = !{ptr @max1227_channels, !68, !"max1227_channels", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/max1027.c", i32 166, i32 35}
!69 = !{ptr @max1229_channels, !70, !"max1229_channels", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/max1027.c", i32 170, i32 35}
!71 = !{ptr @max1231_channels, !72, !"max1231_channels", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/max1027.c", i32 174, i32 35}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @max1027_info, !77, !"max1027_info", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/max1027.c", i32 536, i32 30}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/max1027.c", i32 350, i32 3}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @max1027_read_single_value._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @max1027_read_single_value._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/max1027.c", i32 523, i32 3}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @max1027_trigger_handler._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @max1027_trigger_handler._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @max1027_trigger_ops, !89, !"max1027_trigger_ops", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/max1027.c", i32 531, i32 37}
!90 = !{ptr @max1027_adc_dt_ids, !91, !"max1027_adc_dt_ids", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/max1027.c", i32 86, i32 34}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i32 0, i32 33}
