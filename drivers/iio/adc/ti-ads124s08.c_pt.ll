; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-ads124s08.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-ads124s08.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ads124s_chip_info = type { ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.ads124s_private = type { ptr, ptr, ptr, %struct.mutex, [14 x i32], [96 x i8], [5 x i8], [123 x i8] }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_ti_ads124s08__234_373_ads124s_driver_init6 = internal global ptr @ads124s_driver_init, section ".initcall6.init", align 4
@ads124s_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ads124s_id, ptr @ads124s_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ads124s_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ads124s_driver_exit = internal global ptr @ads124s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [48 x i8] c"ti_ads124s08.author=Dan Murphy <dmuprhy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [44 x i8] c"ti_ads124s08.description=TI TI_ADS12S0X ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [47 x i8] c"ti_ads124s08.file=drivers/iio/adc/ti-ads124s08\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [28 x i8] c"ti_ads124s08.license=GPL v2\00", section ".modinfo", align 1
@ads124s_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ads124s06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ads124s08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ads124s08\00", [22 x i8] zeroinitializer }, align 32
@ads124s_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads124s06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads124s08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ads124s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 325, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reset GPIO not defined\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ads124s_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/adc/ti-ads124s08.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ads124s_probe._entry_ptr = internal global ptr @ads124s_probe._entry, section ".printk_index", align 4
@ads124s_chip_info_tbl = internal constant { [2 x %struct.ads124s_chip_info], [16 x i8] } { [2 x %struct.ads124s_chip_info] [%struct.ads124s_chip_info { ptr @ads124s08_channels, i32 12 }, %struct.ads124s_chip_info { ptr @ads124s06_channels, i32 6 }], [16 x i8] zeroinitializer }, align 32
@ads124s_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ads124s_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ads124s_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ads124s_priv->lock\00", [44 x i8] zeroinitializer }, align 32
@ads124s_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 342, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ads124s_probe._entry_ptr.11 = internal global ptr @ads124s_probe._entry.8, section ".printk_index", align 4
@ads124s08_channels = internal constant { [12 x %struct.iio_chan_spec], [256 x i8] } { [12 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 8, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 9, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 0, i32 10, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 11, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [256 x i8] zeroinitializer }, align 32
@ads124s06_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 32, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [144 x i8] zeroinitializer }, align 32
@ads124s_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 235, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set ADC CH failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ads124s_read_raw\00", [47 x i8] zeroinitializer }, align 32
@ads124s_read_raw._entry_ptr = internal global ptr @ads124s_read_raw._entry, section ".printk_index", align 4
@ads124s_read_raw._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 241, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Start conversions failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ads124s_read_raw._entry_ptr.16 = internal global ptr @ads124s_read_raw._entry.14, section ".printk_index", align 4
@ads124s_read_raw._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.4, i32 247, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Read ADC failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ads124s_read_raw._entry_ptr.19 = internal global ptr @ads124s_read_raw._entry.17, section ".printk_index", align 4
@ads124s_read_raw._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.4, i32 255, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Stop conversions failed\0A\00", [39 x i8] zeroinitializer }, align 32
@ads124s_read_raw._entry_ptr.22 = internal global ptr @ads124s_read_raw._entry.20, section ".printk_index", align 4
@ads124s_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.23, ptr @.str.4, i32 287, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ads124s_trigger_handler\00", [40 x i8] zeroinitializer }, align 32
@ads124s_trigger_handler._entry_ptr = internal global ptr @ads124s_trigger_handler._entry, section ".printk_index", align 4
@ads124s_trigger_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 291, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Start ADC conversions failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ads124s_trigger_handler._entry_ptr.26 = internal global ptr @ads124s_trigger_handler._entry.24, section ".printk_index", align 4
@ads124s_trigger_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 296, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Stop ADC conversions failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ads124s_trigger_handler._entry_ptr.29 = internal global ptr @ads124s_trigger_handler._entry.27, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"ads124s_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 365, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"ads124s_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 351, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 367, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"ads124s_of_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 358, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 323, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 325, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"ads124s_chip_info_tbl\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 150, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"ads124s_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 270, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 337, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 342, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"ads124s08_channels\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 135, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"ads124s06_channels\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 126, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 235, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 241, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 247, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 255, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 287, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 291, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [34 x i8] c"../drivers/iio/adc/ti-ads124s08.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 296, i32 4 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_ads124s_driver_exit, ptr @__initcall__kmod_ti_ads124s08__234_373_ads124s_driver_init6, ptr @ads124s_driver_exit, ptr @ads124s_probe._entry, ptr @ads124s_probe._entry.8, ptr @ads124s_probe._entry_ptr, ptr @ads124s_probe._entry_ptr.11, ptr @ads124s_read_raw._entry, ptr @ads124s_read_raw._entry.14, ptr @ads124s_read_raw._entry.17, ptr @ads124s_read_raw._entry.20, ptr @ads124s_read_raw._entry_ptr, ptr @ads124s_read_raw._entry_ptr.16, ptr @ads124s_read_raw._entry_ptr.19, ptr @ads124s_read_raw._entry_ptr.22, ptr @ads124s_trigger_handler._entry, ptr @ads124s_trigger_handler._entry.24, ptr @ads124s_trigger_handler._entry.27, ptr @ads124s_trigger_handler._entry_ptr, ptr @ads124s_trigger_handler._entry_ptr.26, ptr @ads124s_trigger_handler._entry_ptr.29, ptr @ads124s_driver, ptr @ads124s_id, ptr @.str, ptr @ads124s_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ads124s_chip_info_tbl, ptr @ads124s_info, ptr @ads124s_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @ads124s08_channels, ptr @ads124s06_channels, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_chip_info_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s08_channels to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s06_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_read_raw._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_read_raw._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_read_raw._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_trigger_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads124s_trigger_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ads124s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ads124s_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ads124s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ads124s_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads124s_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #5
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call4 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.ads124s_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.ads124s_chip_info], ptr @ads124s_chip_info_tbl, i32 0, i32 %4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %1, align 128
  %spi10 = getelementptr inbounds %struct.ads124s_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %spi10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %spi10, align 8
  %name11 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %7 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %name11, align 8
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call1, align 8
  %9 = load ptr, ptr %1, align 128
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %channels13 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %12 = ptrtoint ptr %channels13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %channels13, align 8
  %13 = load ptr, ptr %1, align 128
  %num_channels = getelementptr inbounds %struct.ads124s_chip_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_channels, align 4
  %num_channels15 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %16 = ptrtoint ptr %num_channels15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_channels15, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ads124s_info, ptr %info, align 8
  %lock = getelementptr inbounds %struct.ads124s_private, ptr %1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ads124s_probe.__key) #5
  %call20 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null, ptr noundef nonnull @ads124s_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  %reset_gpio.i = getelementptr inbounds %struct.ads124s_private, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %21, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 42949600) #5
  %23 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %24, i32 noundef 1) #5
  br label %ads124s_reset.exit

if.else.i:                                        ; preds = %if.end26
  %data.i.i = getelementptr inbounds %struct.ads124s_private, ptr %19, i32 0, i32 6
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %data.i.i, align 128
  %spi.i.i = getelementptr inbounds %struct.ads124s_private, ptr %19, i32 0, i32 2
  %26 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %28 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 92)
  %30 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %32 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 40)
  %34 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.else.i.ads124s_write_cmd.exit.i_crit_edge

if.else.i.ads124s_write_cmd.exit.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads124s_write_cmd.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ads124s_write_cmd.exit.i

ads124s_write_cmd.exit.i:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %if.else.i.ads124s_write_cmd.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  br label %ads124s_reset.exit

ads124s_reset.exit:                               ; preds = %ads124s_write_cmd.exit.i, %if.then.i
  %call29 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %ads124s_reset.exit, %do.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end24 ], [ %call29, %ads124s_reset.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads124s_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %msg.i.i.i64 = alloca %struct.spi_message, align 4
  %t.i.i65 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i51 = alloca %struct.spi_message, align 4
  %t.i.i52 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %7, i32 noundef 0) #5
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %9)
  %cmp79 = icmp ult i32 %call2, %9
  br i1 %cmp79, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %10 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %spi = getelementptr inbounds %struct.ads124s_private, ptr %3, i32 0, i32 2
  %12 = getelementptr inbounds i8, ptr %t.i.i52, i32 4
  %len1.i.i55 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i52, i32 0, i32 2
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i51, i32 8
  %prev.i.i.i.i.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i51, i32 0, i32 1
  %resources.i.i.i.i.i.i57 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i51, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i58 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i51, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i59 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i52, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i61 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i52, i32 0, i32 18, i32 1
  %14 = getelementptr inbounds i8, ptr %t.i.i65, i32 4
  %len1.i.i69 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i65, i32 0, i32 2
  %15 = getelementptr inbounds i8, ptr %msg.i.i.i64, i32 8
  %prev.i.i.i.i.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i64, i32 0, i32 1
  %resources.i.i.i.i.i.i71 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i64, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i72 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i64, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i73 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i65, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i75 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i65, i32 0, i32 18, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %j.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end23.for.body_crit_edge ]
  %scan_index.080 = phi i32 [ %call2, %for.body.lr.ph ], [ %call26, %if.end23.for.body_crit_edge ]
  %conv = trunc i32 %scan_index.080 to i8
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 8
  %data2.i = getelementptr inbounds %struct.ads124s_private, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %data2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 66, ptr %data2.i, align 128
  %arrayidx4.i = getelementptr %struct.ads124s_private, ptr %17, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.ads124s_private, ptr %17, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %arrayidx6.i, align 2
  %spi.i = getelementptr inbounds %struct.ads124s_private, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %23 = call ptr @memset(ptr %10, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data2.i, ptr %t.i.i, align 4
  %25 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %26 = call ptr @memset(ptr %11, i32 0, i32 40)
  %27 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %for.body.ads124s_write_reg.exit_crit_edge

for.body.ads124s_write_reg.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads124s_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ads124s_write_reg.exit

ads124s_write_reg.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %for.body.ads124s_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %22, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %ads124s_write_reg.exit.if.end_crit_edge, label %do.end

ads124s_write_reg.exit.if.end_crit_edge:          ; preds = %ads124s_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %ads124s_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.12) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %ads124s_write_reg.exit.if.end_crit_edge
  %37 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i, align 8
  %data.i = getelementptr inbounds %struct.ads124s_private, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %data.i, align 128
  %spi.i54 = getelementptr inbounds %struct.ads124s_private, ptr %38, i32 0, i32 2
  %40 = ptrtoint ptr %spi.i54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi.i54, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i52) #5
  %42 = call ptr @memset(ptr %12, i32 0, i32 92)
  %43 = ptrtoint ptr %t.i.i52 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %data.i, ptr %t.i.i52, align 4
  %44 = ptrtoint ptr %len1.i.i55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %len1.i.i55, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i51) #5
  %45 = call ptr @memset(ptr %13, i32 0, i32 40)
  %46 = ptrtoint ptr %msg.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg.i.i.i51, ptr %msg.i.i.i51, align 4
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i51, ptr %prev.i.i.i.i.i.i.i56, align 4
  %48 = ptrtoint ptr %resources.i.i.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i.i.i.i57, ptr %resources.i.i.i.i.i.i57, align 4
  %49 = ptrtoint ptr %prev.i2.i.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i.i.i.i57, ptr %prev.i2.i.i.i.i.i.i58, align 4
  %call.i.i.i.i.i.i.i60 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i59, ptr noundef nonnull %msg.i.i.i51, ptr noundef nonnull %msg.i.i.i51) #5
  br i1 %call.i.i.i.i.i.i.i60, label %if.end.i.i.i.i.i.i.i62, label %if.end.ads124s_write_cmd.exit_crit_edge

if.end.ads124s_write_cmd.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads124s_write_cmd.exit

if.end.i.i.i.i.i.i.i62:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.i.i.i.i59, ptr %prev.i.i.i.i.i.i.i56, align 4
  %51 = ptrtoint ptr %transfer_list.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i51, ptr %transfer_list.i.i.i.i.i59, align 4
  %52 = ptrtoint ptr %prev3.i.i.i.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i.i51, ptr %prev3.i.i.i.i.i.i.i61, align 4
  %53 = ptrtoint ptr %msg.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.i.i.i.i59, ptr %msg.i.i.i51, align 4
  br label %ads124s_write_cmd.exit

ads124s_write_cmd.exit:                           ; preds = %if.end.i.i.i.i.i.i.i62, %if.end.ads124s_write_cmd.exit_crit_edge
  %call.i.i.i63 = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %msg.i.i.i51) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i51) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i63)
  %tobool6.not = icmp eq i32 %call.i.i.i63, 0
  br i1 %tobool6.not, label %ads124s_write_cmd.exit.if.end13_crit_edge, label %do.end10

ads124s_write_cmd.exit.if.end13_crit_edge:        ; preds = %ads124s_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end10:                                         ; preds = %ads124s_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %spi, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.25) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %ads124s_write_cmd.exit.if.end13_crit_edge
  %call14 = call fastcc i32 @ads124s_read(ptr noundef %1)
  %arrayidx = getelementptr %struct.ads124s_private, ptr %3, i32 0, i32 4, i32 %j.081
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call14, ptr %arrayidx, align 4
  %57 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv.i, align 8
  %data.i67 = getelementptr inbounds %struct.ads124s_private, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %data.i67 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %data.i67, align 128
  %spi.i68 = getelementptr inbounds %struct.ads124s_private, ptr %58, i32 0, i32 2
  %60 = ptrtoint ptr %spi.i68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %spi.i68, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i65) #5
  %62 = call ptr @memset(ptr %14, i32 0, i32 92)
  %63 = ptrtoint ptr %t.i.i65 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %data.i67, ptr %t.i.i65, align 4
  %64 = ptrtoint ptr %len1.i.i69 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %len1.i.i69, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i64) #5
  %65 = call ptr @memset(ptr %15, i32 0, i32 40)
  %66 = ptrtoint ptr %msg.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %msg.i.i.i64, ptr %msg.i.i.i64, align 4
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i64, ptr %prev.i.i.i.i.i.i.i70, align 4
  %68 = ptrtoint ptr %resources.i.i.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %resources.i.i.i.i.i.i71, ptr %resources.i.i.i.i.i.i71, align 4
  %69 = ptrtoint ptr %prev.i2.i.i.i.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %resources.i.i.i.i.i.i71, ptr %prev.i2.i.i.i.i.i.i72, align 4
  %call.i.i.i.i.i.i.i74 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i73, ptr noundef nonnull %msg.i.i.i64, ptr noundef nonnull %msg.i.i.i64) #5
  br i1 %call.i.i.i.i.i.i.i74, label %if.end.i.i.i.i.i.i.i76, label %if.end13.ads124s_write_cmd.exit78_crit_edge

if.end13.ads124s_write_cmd.exit78_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads124s_write_cmd.exit78

if.end.i.i.i.i.i.i.i76:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %prev.i.i.i.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %transfer_list.i.i.i.i.i73, ptr %prev.i.i.i.i.i.i.i70, align 4
  %71 = ptrtoint ptr %transfer_list.i.i.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i.i64, ptr %transfer_list.i.i.i.i.i73, align 4
  %72 = ptrtoint ptr %prev3.i.i.i.i.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i.i64, ptr %prev3.i.i.i.i.i.i.i75, align 4
  %73 = ptrtoint ptr %msg.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %transfer_list.i.i.i.i.i73, ptr %msg.i.i.i64, align 4
  br label %ads124s_write_cmd.exit78

ads124s_write_cmd.exit78:                         ; preds = %if.end.i.i.i.i.i.i.i76, %if.end13.ads124s_write_cmd.exit78_crit_edge
  %call.i.i.i77 = call i32 @spi_sync(ptr noundef %61, ptr noundef nonnull %msg.i.i.i64) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i64) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i77)
  %tobool16.not = icmp eq i32 %call.i.i.i77, 0
  br i1 %tobool16.not, label %ads124s_write_cmd.exit78.if.end23_crit_edge, label %do.end20

ads124s_write_cmd.exit78.if.end23_crit_edge:      ; preds = %ads124s_write_cmd.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end20:                                         ; preds = %ads124s_write_cmd.exit78
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %spi, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.28) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %ads124s_write_cmd.exit78.if.end23_crit_edge
  %inc = add i32 %j.081, 1
  %76 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %active_scan_mask, align 4
  %78 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %scan_index.080, 1
  %call26 = call i32 @_find_next_bit_be(ptr noundef %77, i32 noundef %79, i32 noundef %add) #5
  %80 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call26, %81
  br i1 %cmp, label %if.end23.for.body_crit_edge, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %entry.for.end_crit_edge
  %buffer27 = getelementptr inbounds %struct.ads124s_private, ptr %3, i32 0, i32 4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %82 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %scan_timestamp.i, align 8, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %84 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %86 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %87, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer27, i32 %sub.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %85, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer27) #5
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %89 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %90) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads124s_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %m) #2 align 64 {
entry:
  %msg.i.i.i59 = alloca %struct.spi_message, align 4
  %t.i.i60 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i46 = alloca %struct.spi_message, align 4
  %t.i.i47 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ads124s_private, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m)
  %cond = icmp eq i32 %m, 0
  br i1 %cond, label %sw.bb, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %data2.i = getelementptr inbounds %struct.ads124s_private, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %data2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 66, ptr %data2.i, align 128
  %arrayidx4.i = getelementptr %struct.ads124s_private, ptr %5, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.ads124s_private, ptr %5, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx6.i, align 2
  %spi.i = getelementptr inbounds %struct.ads124s_private, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %11 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data2.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %15 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.ads124s_write_reg.exit_crit_edge

sw.bb.ads124s_write_reg.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads124s_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ads124s_write_reg.exit

ads124s_write_reg.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.ads124s_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %ads124s_write_reg.exit.out.sink.split_crit_edge

ads124s_write_reg.exit.out.sink.split_crit_edge:  ; preds = %ads124s_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end:                                           ; preds = %ads124s_write_reg.exit
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 8
  %data.i = getelementptr inbounds %struct.ads124s_private, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %data.i, align 128
  %spi.i49 = getelementptr inbounds %struct.ads124s_private, ptr %26, i32 0, i32 2
  %28 = ptrtoint ptr %spi.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi.i49, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i47) #5
  %30 = getelementptr inbounds i8, ptr %t.i.i47, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 92)
  %32 = ptrtoint ptr %t.i.i47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data.i, ptr %t.i.i47, align 4
  %len1.i.i50 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47, i32 0, i32 2
  %33 = ptrtoint ptr %len1.i.i50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %len1.i.i50, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i46) #5
  %34 = getelementptr inbounds i8, ptr %msg.i.i.i46, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 40)
  %36 = ptrtoint ptr %msg.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %msg.i.i.i46, ptr %msg.i.i.i46, align 4
  %prev.i.i.i.i.i.i.i51 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i46, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i46, ptr %prev.i.i.i.i.i.i.i51, align 4
  %resources.i.i.i.i.i.i52 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i46, i32 0, i32 10
  %38 = ptrtoint ptr %resources.i.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i.i.i.i.i52, ptr %resources.i.i.i.i.i.i52, align 4
  %prev.i2.i.i.i.i.i.i53 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i46, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i2.i.i.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i.i.i.i.i52, ptr %prev.i2.i.i.i.i.i.i53, align 4
  %transfer_list.i.i.i.i.i54 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47, i32 0, i32 18
  %call.i.i.i.i.i.i.i55 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i54, ptr noundef nonnull %msg.i.i.i46, ptr noundef nonnull %msg.i.i.i46) #5
  br i1 %call.i.i.i.i.i.i.i55, label %if.end.i.i.i.i.i.i.i57, label %if.end.ads124s_write_cmd.exit_crit_edge

if.end.ads124s_write_cmd.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads124s_write_cmd.exit

if.end.i.i.i.i.i.i.i57:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %prev.i.i.i.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i.i.i.i.i54, ptr %prev.i.i.i.i.i.i.i51, align 4
  %41 = ptrtoint ptr %transfer_list.i.i.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i46, ptr %transfer_list.i.i.i.i.i54, align 4
  %prev3.i.i.i.i.i.i.i56 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i46, ptr %prev3.i.i.i.i.i.i.i56, align 4
  %43 = ptrtoint ptr %msg.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i.i.i.i.i54, ptr %msg.i.i.i46, align 4
  br label %ads124s_write_cmd.exit

ads124s_write_cmd.exit:                           ; preds = %if.end.i.i.i.i.i.i.i57, %if.end.ads124s_write_cmd.exit_crit_edge
  %call.i.i.i58 = call i32 @spi_sync(ptr noundef %29, ptr noundef nonnull %msg.i.i.i46) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i46) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i47) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i58)
  %tobool3.not = icmp eq i32 %call.i.i.i58, 0
  br i1 %tobool3.not, label %if.end10, label %ads124s_write_cmd.exit.out.sink.split_crit_edge

ads124s_write_cmd.exit.out.sink.split_crit_edge:  ; preds = %ads124s_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end10:                                         ; preds = %ads124s_write_cmd.exit
  %call12 = call fastcc i32 @ads124s_read(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end10.out.sink.split_crit_edge, label %if.end20

if.end10.out.sink.split_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end20:                                         ; preds = %if.end10
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call12, ptr %val, align 4
  %45 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i, align 8
  %data.i62 = getelementptr inbounds %struct.ads124s_private, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %data.i62 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %data.i62, align 128
  %spi.i63 = getelementptr inbounds %struct.ads124s_private, ptr %46, i32 0, i32 2
  %48 = ptrtoint ptr %spi.i63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spi.i63, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i60) #5
  %50 = getelementptr inbounds i8, ptr %t.i.i60, i32 4
  %51 = call ptr @memset(ptr %50, i32 0, i32 92)
  %52 = ptrtoint ptr %t.i.i60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %data.i62, ptr %t.i.i60, align 4
  %len1.i.i64 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i60, i32 0, i32 2
  %53 = ptrtoint ptr %len1.i.i64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %len1.i.i64, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i59) #5
  %54 = getelementptr inbounds i8, ptr %msg.i.i.i59, i32 8
  %55 = call ptr @memset(ptr %54, i32 0, i32 40)
  %56 = ptrtoint ptr %msg.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %msg.i.i.i59, ptr %msg.i.i.i59, align 4
  %prev.i.i.i.i.i.i.i65 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i59, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msg.i.i.i59, ptr %prev.i.i.i.i.i.i.i65, align 4
  %resources.i.i.i.i.i.i66 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i59, i32 0, i32 10
  %58 = ptrtoint ptr %resources.i.i.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %resources.i.i.i.i.i.i66, ptr %resources.i.i.i.i.i.i66, align 4
  %prev.i2.i.i.i.i.i.i67 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i59, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %prev.i2.i.i.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %resources.i.i.i.i.i.i66, ptr %prev.i2.i.i.i.i.i.i67, align 4
  %transfer_list.i.i.i.i.i68 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i60, i32 0, i32 18
  %call.i.i.i.i.i.i.i69 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i68, ptr noundef nonnull %msg.i.i.i59, ptr noundef nonnull %msg.i.i.i59) #5
  br i1 %call.i.i.i.i.i.i.i69, label %if.end.i.i.i.i.i.i.i71, label %if.end20.ads124s_write_cmd.exit73_crit_edge

if.end20.ads124s_write_cmd.exit73_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %ads124s_write_cmd.exit73

if.end.i.i.i.i.i.i.i71:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %transfer_list.i.i.i.i.i68, ptr %prev.i.i.i.i.i.i.i65, align 4
  %61 = ptrtoint ptr %transfer_list.i.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i.i59, ptr %transfer_list.i.i.i.i.i68, align 4
  %prev3.i.i.i.i.i.i.i70 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i60, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i59, ptr %prev3.i.i.i.i.i.i.i70, align 4
  %63 = ptrtoint ptr %msg.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %transfer_list.i.i.i.i.i68, ptr %msg.i.i.i59, align 4
  br label %ads124s_write_cmd.exit73

ads124s_write_cmd.exit73:                         ; preds = %if.end.i.i.i.i.i.i.i71, %if.end20.ads124s_write_cmd.exit73_crit_edge
  %call.i.i.i72 = call i32 @spi_sync(ptr noundef %49, ptr noundef nonnull %msg.i.i.i59) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i59) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i72)
  %tobool22.not = icmp eq i32 %call.i.i.i72, 0
  br i1 %tobool22.not, label %ads124s_write_cmd.exit73.out_crit_edge, label %ads124s_write_cmd.exit73.out.sink.split_crit_edge

ads124s_write_cmd.exit73.out.sink.split_crit_edge: ; preds = %ads124s_write_cmd.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

ads124s_write_cmd.exit73.out_crit_edge:           ; preds = %ads124s_write_cmd.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out.sink.split:                                   ; preds = %ads124s_write_cmd.exit73.out.sink.split_crit_edge, %if.end10.out.sink.split_crit_edge, %ads124s_write_cmd.exit.out.sink.split_crit_edge, %ads124s_write_reg.exit.out.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.12, %ads124s_write_reg.exit.out.sink.split_crit_edge ], [ @.str.15, %ads124s_write_cmd.exit.out.sink.split_crit_edge ], [ @.str.18, %if.end10.out.sink.split_crit_edge ], [ @.str.21, %ads124s_write_cmd.exit73.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i.i.i, %ads124s_write_reg.exit.out.sink.split_crit_edge ], [ %call.i.i.i58, %ads124s_write_cmd.exit.out.sink.split_crit_edge ], [ %call12, %if.end10.out.sink.split_crit_edge ], [ %call.i.i.i72, %ads124s_write_cmd.exit73.out.sink.split_crit_edge ]
  %spi27 = getelementptr inbounds %struct.ads124s_private, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %spi27 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %spi27, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull %.str.21.sink) #8
  br label %out

out:                                              ; preds = %out.sink.split, %ads124s_write_cmd.exit73.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 1, %ads124s_write_cmd.exit73.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads124s_read(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #5
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %data = getelementptr inbounds %struct.ads124s_private, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 7
  %6 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %cs_change, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1
  %arrayidx3 = getelementptr %struct.ads124s_private, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx3, ptr %arrayinit.element, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 1
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx3, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %9 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %len6, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %data, align 128
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %arrayidx3, align 1
  %spi = getelementptr inbounds %struct.ads124s_private, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %25, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i.i.i.1, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.1, ptr %25, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge, label %if.end

spi_message_add_tail.exit.i.i.1.cleanup_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17 = getelementptr %struct.ads124s_private, ptr %1, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx17, align 1
  %conv.i.i = zext i8 %31 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.ads124s_private, ptr %1, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %33 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.ads124s_private, ptr %1, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %35 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %or6.i.i, %if.end ], [ %call.i, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_ti_ads124s08__234_373_ads124s_driver_init6, !1, !"__initcall__kmod_ti_ads124s08__234_373_ads124s_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 373, i32 1}
!2 = !{ptr @__exitcall_ads124s_driver_exit, !1, !"__exitcall_ads124s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 375, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 376, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 377, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 367, i32 11}
!12 = !{ptr @ads124s_driver, !13, !"ads124s_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 365, i32 26}
!14 = !{ptr @ads124s_id, !15, !"ads124s_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 351, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 323, i32 10}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 325, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ads124s_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ads124s_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ads124s_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 337, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 342, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ads124s_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ads124s_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ads124s_chip_info_tbl, !35, !"ads124s_chip_info_tbl", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 150, i32 39}
!36 = !{ptr @ads124s08_channels, !37, !"ads124s08_channels", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 135, i32 35}
!38 = !{ptr @ads124s06_channels, !39, !"ads124s06_channels", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 126, i32 35}
!40 = !{ptr @ads124s_info, !41, !"ads124s_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 270, i32 30}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 235, i32 4}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ads124s_read_raw._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ads124s_read_raw._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 241, i32 4}
!49 = !{ptr @ads124s_read_raw._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ads124s_read_raw._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 247, i32 4}
!53 = !{ptr @ads124s_read_raw._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ads124s_read_raw._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 255, i32 4}
!57 = !{ptr @ads124s_read_raw._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ads124s_read_raw._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 287, i32 4}
!61 = !{ptr @ads124s_trigger_handler._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ads124s_trigger_handler._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 291, i32 4}
!65 = !{ptr @ads124s_trigger_handler._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ads124s_trigger_handler._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 296, i32 4}
!69 = !{ptr @ads124s_trigger_handler._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ads124s_trigger_handler._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ads124s_of_table, !72, !"ads124s_of_table", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/ti-ads124s08.c", i32 358, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
