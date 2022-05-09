; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-ads7950.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-ads7950.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ti_ads7950_chip_info = type { ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.85, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.85 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ti_ads7950_state = type { ptr, %struct.spi_transfer, [3 x %struct.spi_transfer], %struct.spi_message, %struct.spi_message, %struct.mutex, %struct.gpio_chip, ptr, i32, i32, i32, [68 x i8], [22 x i16], [18 x i16], i16, i16, [44 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }

@__initcall__kmod_ti_ads7950__290_722_ti_ads7950_driver_init6 = internal global ptr @ti_ads7950_driver_init, section ".initcall6.init", align 4
@ti_ads7950_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ti_ads7950_id, ptr @ti_ads7950_probe, ptr @ti_ads7950_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ads7950_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ti_ads7950_driver_exit = internal global ptr @ti_ads7950_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [55 x i8] c"ti_ads7950.author=David Lechner <david@lechnology.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [41 x i8] c"ti_ads7950.description=TI TI_ADS7950 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [43 x i8] c"ti_ads7950.file=drivers/iio/adc/ti-ads7950\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [26 x i8] c"ti_ads7950.license=GPL v2\00", section ".modinfo", align 1
@ti_ads7950_id = internal constant { [13 x %struct.spi_device_id], [108 x i8] } { [13 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ads7950\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ads7951\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ads7952\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ads7953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ads7954\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ads7955\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"ads7956\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"ads7957\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"ads7958\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"ads7959\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id { [32 x i8] c"ads7960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.spi_device_id { [32 x i8] c"ads7961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.spi_device_id zeroinitializer], [108 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ads7950\00", [24 x i8] zeroinitializer }, align 32
@ads7950_of_table = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7950\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_ads7950_chip_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7951\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7952\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7954\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 32) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7955\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 40) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7956\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7957\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 56) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7958\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 64) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7959\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 80) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_ads7950_chip_info, i64 88) }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@ti_ads7950_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error in spi setup\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_ads7950_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/ti-ads7950.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_ads7950_probe._entry_ptr = internal global ptr @ti_ads7950_probe._entry, section ".printk_index", align 4
@ti_ads7950_chip_info = internal constant { [12 x %struct.ti_ads7950_chip_info], [32 x i8] } { [12 x %struct.ti_ads7950_chip_info] [%struct.ti_ads7950_chip_info { ptr @ti_ads7950_channels, i32 5 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7951_channels, i32 9 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7952_channels, i32 13 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7953_channels, i32 17 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7954_channels, i32 5 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7955_channels, i32 9 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7956_channels, i32 13 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7957_channels, i32 17 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7958_channels, i32 5 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7959_channels, i32 9 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7960_channels, i32 13 }, %struct.ti_ads7950_chip_info { ptr @ti_ads7961_channels, i32 17 }], [32 x i8] zeroinitializer }, align 32
@ti_ads7950_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ti_ads7950_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_ads7950_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ti_ads7950_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&st->slock\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get regulator \22vref\22\0A\00", [32 x i8] zeroinitializer }, align 32
@ti_ads7950_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable regulator \22vref\22\0A\00", [61 x i8] zeroinitializer }, align 32
@ti_ads7950_probe._entry_ptr.11 = internal global ptr @ti_ads7950_probe._entry.9, section ".printk_index", align 4
@ti_ads7950_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to setup triggered buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@ti_ads7950_probe._entry_ptr.14 = internal global ptr @ti_ads7950_probe._entry.12, section ".printk_index", align 4
@ti_ads7950_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 623, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init adc chip\0A\00", [39 x i8] zeroinitializer }, align 32
@ti_ads7950_probe._entry_ptr.17 = internal global ptr @ti_ads7950_probe._entry.15, section ".printk_index", align 4
@ti_ads7950_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_ads7950_probe._entry_ptr.20 = internal global ptr @ti_ads7950_probe._entry.18, section ".printk_index", align 4
@ti_ads7950_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ti_ads7950_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ti_ads7950_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to init GPIOs\0A\00", [42 x i8] zeroinitializer }, align 32
@ti_ads7950_probe._entry_ptr.23 = internal global ptr @ti_ads7950_probe._entry.21, section ".printk_index", align 4
@ti_ads7950_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ti_ads7951_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@ti_ads7952_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 12, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [264 x i8] zeroinitializer }, align 32
@ti_ads7953_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.85 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [360 x i8] zeroinitializer }, align 32
@ti_ads7954_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ti_ads7955_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@ti_ads7956_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 12, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [264 x i8] zeroinitializer }, align 32
@ti_ads7957_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.85 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [360 x i8] zeroinitializer }, align 32
@ti_ads7958_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ti_ads7959_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@ti_ads7960_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 12, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [264 x i8] zeroinitializer }, align 32
@ti_ads7961_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.85 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.85 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [360 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CH##index\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"ti_ads7950_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 713, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"ti_ads7950_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 679, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 715, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"ads7950_of_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 696, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 543, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"ti_ads7950_chip_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 228, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"ti_ads7950_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 401, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 599, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 601, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 604, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 610, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 617, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 623, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 629, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 645, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 647, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"ti_ads7950_channels\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"ti_ads7951_channels\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 216, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"ti_ads7952_channels\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 217, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"ti_ads7953_channels\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 218, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"ti_ads7954_channels\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 219, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"ti_ads7955_channels\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 220, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"ti_ads7956_channels\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 221, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"ti_ads7957_channels\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 222, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"ti_ads7958_channels\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 223, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"ti_ads7959_channels\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 224, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"ti_ads7960_channels\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 225, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"ti_ads7961_channels\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 226, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [32 x i8] c"../drivers/iio/adc/ti-ads7950.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 215, i32 8 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ti_ads7950_driver_exit, ptr @__initcall__kmod_ti_ads7950__290_722_ti_ads7950_driver_init6, ptr @ti_ads7950_driver_exit, ptr @ti_ads7950_probe._entry, ptr @ti_ads7950_probe._entry.12, ptr @ti_ads7950_probe._entry.15, ptr @ti_ads7950_probe._entry.18, ptr @ti_ads7950_probe._entry.21, ptr @ti_ads7950_probe._entry.9, ptr @ti_ads7950_probe._entry_ptr, ptr @ti_ads7950_probe._entry_ptr.11, ptr @ti_ads7950_probe._entry_ptr.14, ptr @ti_ads7950_probe._entry_ptr.17, ptr @ti_ads7950_probe._entry_ptr.20, ptr @ti_ads7950_probe._entry_ptr.23, ptr @ti_ads7950_driver, ptr @ti_ads7950_id, ptr @.str, ptr @ads7950_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ti_ads7950_chip_info, ptr @ti_ads7950_info, ptr @ti_ads7950_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @ti_ads7950_probe.lock_key, ptr @ti_ads7950_probe.request_key, ptr @.str.22, ptr @ti_ads7950_channels, ptr @ti_ads7951_channels, ptr @ti_ads7952_channels, ptr @ti_ads7953_channels, ptr @ti_ads7954_channels, ptr @ti_ads7955_channels, ptr @ti_ads7956_channels, ptr @ti_ads7957_channels, ptr @ti_ads7958_channels, ptr @ti_ads7959_channels, ptr @ti_ads7960_channels, ptr @ti_ads7961_channels, ptr @.str.24], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_id to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7950_of_table to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_chip_info to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7950_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7951_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7952_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7953_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7954_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7955_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7956_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7957_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7958_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7959_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7960_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_ads7961_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ti_ads7950_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_ads7950_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ti_ads7950_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 16, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 8
  %or = or i32 %2, 4096
  store i32 %or, ptr %mode, align 8
  %call = tail call i32 @spi_setup(ptr noundef %spi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 1152) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %4, align 128
  %call7 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call7, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [12 x %struct.ti_ads7950_chip_info], ptr @ti_ads7950_chip_info, i32 0, i32 %8
  %call8 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %name9 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %9 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %name9, align 8
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call2, align 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %channels10 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %13 = ptrtoint ptr %channels10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %channels10, align 8
  %num_channels = getelementptr [12 x %struct.ti_ads7950_chip_info], ptr @ti_ads7950_chip_info, i32 0, i32 %8, i32 1
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_channels, align 4
  %num_channels11 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %16 = ptrtoint ptr %num_channels11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_channels11, align 4
  %info12 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %17 = ptrtoint ptr %info12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ti_ads7950_info, ptr %info12, align 8
  %ring_msg = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 3
  %18 = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 3, i32 1
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %ring_msg, ptr %ring_msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ring_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 3, i32 10
  %22 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 3, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %tx_buf = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 13
  %ring_xfer = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 1
  %24 = ptrtoint ptr %ring_xfer to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tx_buf, ptr %ring_xfer, align 4
  %rx_buf = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 12
  %rx_buf17 = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %rx_buf17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rx_buf, ptr %rx_buf17, align 4
  %transfer_list.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 1, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %ring_msg, ptr noundef %ring_msg) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.spi_message_add_tail.exit_crit_edge

if.end4.spi_message_add_tail.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ring_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 1, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ring_msg, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i, ptr %ring_msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end4.spi_message_add_tail.exit_crit_edge
  %single_tx = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 14
  %scan_single_xfer = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 2
  %30 = ptrtoint ptr %scan_single_xfer to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %single_tx, ptr %scan_single_xfer, align 4
  %len = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 0, i32 7
  %32 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %arrayidx28 = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %single_tx, ptr %arrayidx28, align 4
  %len32 = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 1, i32 2
  %34 = ptrtoint ptr %len32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %len32, align 4
  %cs_change35 = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 1, i32 7
  %35 = ptrtoint ptr %cs_change35 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load36 = load i8, ptr %cs_change35, align 4
  %bf.set38 = or i8 %bf.load36, 64
  store i8 %bf.set38, ptr %cs_change35, align 4
  %single_rx = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 15
  %rx_buf41 = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 2, i32 1
  %36 = ptrtoint ptr %rx_buf41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %single_rx, ptr %rx_buf41, align 4
  %len44 = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 2, i32 2
  %37 = ptrtoint ptr %len44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %len44, align 4
  %scan_single_msg = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 4
  %38 = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 4, i32 1
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %scan_single_msg, ptr %scan_single_msg, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 4, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %scan_single_msg, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 4, i32 10
  %42 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 4, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %scan_single_msg, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %spi_message_add_tail.exit.spi_message_add_tail.exit.i_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %scan_single_msg, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %scan_single_msg, ptr %prev3.i.i.i.i, align 4
  %47 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i, ptr %scan_single_msg, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %spi_message_add_tail.exit.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i.1.i = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 1, i32 18
  %48 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i, ptr noundef %49, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i.1.i, label %if.end.i.i.i.1.i, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit.1.i_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit.1.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.1.i

if.end.i.i.i.1.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.1.i, ptr %prev.i.i.i.i, align 4
  %51 = ptrtoint ptr %transfer_list.i.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %scan_single_msg, ptr %transfer_list.i.1.i, align 4
  %prev3.i.i.i.1.i = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 1, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i.1.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.1.i, ptr %49, align 4
  br label %spi_message_add_tail.exit.1.i

spi_message_add_tail.exit.1.i:                    ; preds = %if.end.i.i.i.1.i, %spi_message_add_tail.exit.i.spi_message_add_tail.exit.1.i_crit_edge
  %transfer_list.i.2.i = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 2, i32 18
  %54 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.2.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.2.i, ptr noundef %55, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i.2.i, label %if.end.i.i.i.2.i, label %spi_message_add_tail.exit.1.i.spi_message_init_with_transfers.exit_crit_edge

spi_message_add_tail.exit.1.i.spi_message_init_with_transfers.exit_crit_edge: ; preds = %spi_message_add_tail.exit.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_init_with_transfers.exit

if.end.i.i.i.2.i:                                 ; preds = %spi_message_add_tail.exit.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %transfer_list.i.2.i, ptr %prev.i.i.i.i, align 4
  %57 = ptrtoint ptr %transfer_list.i.2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %scan_single_msg, ptr %transfer_list.i.2.i, align 4
  %prev3.i.i.i.2.i = getelementptr %struct.ti_ads7950_state, ptr %4, i32 0, i32 2, i32 2, i32 18, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i.2.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %transfer_list.i.2.i, ptr %55, align 4
  br label %spi_message_init_with_transfers.exit

spi_message_init_with_transfers.exit:             ; preds = %if.end.i.i.i.2.i, %spi_message_add_tail.exit.1.i.spi_message_init_with_transfers.exit_crit_edge
  %slock = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %slock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ti_ads7950_probe.__key) #4
  %call53 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.7) #4
  %reg = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 7
  %60 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call53, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.end61

if.then56:                                        ; preds = %spi_message_init_with_transfers.exit
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %call53 to i32
  %call60 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %61, ptr noundef nonnull @.str.8) #4
  br label %error_destroy_mutex

if.end61:                                         ; preds = %spi_message_init_with_transfers.exit
  %call63 = tail call i32 @regulator_enable(ptr noundef %call53) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #7
  br label %error_destroy_mutex

if.end70:                                         ; preds = %if.end61
  %call71 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call2, ptr noundef null, ptr noundef nonnull @ti_ads7950_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13) #7
  br label %error_disable_reg

if.end78:                                         ; preds = %if.end70
  tail call void @mutex_lock_nested(ptr noundef %slock, i32 noundef 0) #4
  %cmd_settings_bitmask.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 9
  %62 = ptrtoint ptr %cmd_settings_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 64, ptr %cmd_settings_bitmask.i, align 4
  %63 = ptrtoint ptr %single_tx to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 6208, ptr %single_tx, align 16
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %4, align 128
  %call.i = tail call i32 @spi_sync(ptr noundef %65, ptr noundef %scan_single_msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ti_ads7950_init_hw.exit, label %ti_ads7950_init_hw.exit.thread

ti_ads7950_init_hw.exit.thread:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %slock) #4
  br label %do.end84

ti_ads7950_init_hw.exit:                          ; preds = %if.end78
  %gpio_cmd_settings_bitmask.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 10
  %66 = ptrtoint ptr %gpio_cmd_settings_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %gpio_cmd_settings_bitmask.i, align 8
  %67 = ptrtoint ptr %single_tx to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 16384, ptr %single_tx, align 16
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %4, align 128
  %call9.i = tail call i32 @spi_sync(ptr noundef %69, ptr noundef %scan_single_msg) #4
  tail call void @mutex_unlock(ptr noundef %slock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool80.not = icmp eq i32 %call9.i, 0
  br i1 %tobool80.not, label %if.end86, label %ti_ads7950_init_hw.exit.do.end84_crit_edge

ti_ads7950_init_hw.exit.do.end84_crit_edge:       ; preds = %ti_ads7950_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end84

do.end84:                                         ; preds = %ti_ads7950_init_hw.exit.do.end84_crit_edge, %ti_ads7950_init_hw.exit.thread
  %ret.0.i204 = phi i32 [ %call.i, %ti_ads7950_init_hw.exit.thread ], [ %call9.i, %ti_ads7950_init_hw.exit.do.end84_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #7
  br label %error_cleanup_ring

if.end86:                                         ; preds = %ti_ads7950_init_hw.exit
  %call87 = tail call i32 @__iio_device_register(ptr noundef nonnull %call2, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end94, label %do.end92

do.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19) #7
  br label %error_cleanup_ring

if.end94:                                         ; preds = %if.end86
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %4, align 128
  %init_name.i = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i200 = icmp eq ptr %73, null
  br i1 %tobool.not.i200, label %if.end.i201, label %if.end94.dev_name.exit_crit_edge

if.end94.dev_name.exit_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i201:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i201, %if.end94.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %75, %if.end.i201 ], [ %73, %if.end94.dev_name.exit_crit_edge ]
  %chip = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6
  %76 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %retval.0.i, ptr %chip, align 16
  %parent = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 2
  %77 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %71, ptr %parent, align 8
  %owner = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 4
  %78 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %owner, align 16
  %base = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 19
  %79 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 20
  %80 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 4, ptr %ngpio, align 16
  %get_direction = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 7
  %81 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @ti_ads7950_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 8
  %82 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ti_ads7950_direction_input, ptr %direction_input, align 16
  %direction_output = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 9
  %83 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @ti_ads7950_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 10
  %84 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @ti_ads7950_get, ptr %get, align 8
  %set = getelementptr inbounds %struct.ti_ads7950_state, ptr %4, i32 0, i32 6, i32 12
  %85 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @ti_ads7950_set, ptr %set, align 16
  %call110 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef %4, ptr noundef nonnull @ti_ads7950_probe.lock_key, ptr noundef nonnull @ti_ads7950_probe.request_key) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %dev_name.exit.cleanup_crit_edge, label %do.end115

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end115:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22) #7
  tail call void @iio_device_unregister(ptr noundef nonnull %call2) #4
  br label %error_cleanup_ring

error_cleanup_ring:                               ; preds = %do.end115, %do.end92, %do.end84
  %ret.0 = phi i32 [ %ret.0.i204, %do.end84 ], [ %call87, %do.end92 ], [ %call110, %do.end115 ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call2) #4
  br label %error_disable_reg

error_disable_reg:                                ; preds = %error_cleanup_ring, %do.end76
  %ret.1 = phi i32 [ %call71, %do.end76 ], [ %ret.0, %error_cleanup_ring ]
  %86 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg, align 4
  %call119 = tail call i32 @regulator_disable(ptr noundef %87) #4
  br label %error_destroy_mutex

error_destroy_mutex:                              ; preds = %error_disable_reg, %do.end68, %if.then56
  %ret.2 = phi i32 [ %call60, %if.then56 ], [ %call63, %do.end68 ], [ %ret.1, %error_disable_reg ]
  tail call void @mutex_destroy(ptr noundef %slock) #4
  br label %cleanup

cleanup:                                          ; preds = %error_destroy_mutex, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %error_destroy_mutex ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %chip = getelementptr inbounds %struct.ti_ads7950_state, ptr %3, i32 0, i32 6
  tail call void @gpiochip_remove(ptr noundef %chip) #4
  tail call void @iio_device_unregister(ptr noundef %1) #4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #4
  %reg = getelementptr inbounds %struct.ti_ads7950_state, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #4
  %slock = getelementptr inbounds %struct.ti_ads7950_state, ptr %3, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %slock) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %slock = getelementptr inbounds %struct.ti_ads7950_state, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %slock, i32 noundef 0) #4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %ring_msg = getelementptr inbounds %struct.ti_ads7950_state, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %ring_msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ti_ads7950_state, ptr %3, i32 0, i32 12, i32 2
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %9, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %arrayidx, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call3, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %arrayidx) #4
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %slock) #4
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %12) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %gpio_cmd_settings_bitmask = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %gpio_cmd_settings_bitmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_cmd_settings_bitmask, align 8
  %2 = xor i32 %1, -1
  %3 = lshr i32 %2, %offset
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %slock.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %slock.i, i32 noundef 0) #4
  %gpio_cmd_settings_bitmask7.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 10
  %0 = ptrtoint ptr %gpio_cmd_settings_bitmask7.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_cmd_settings_bitmask7.i, align 8
  %shl8.i = shl nuw i32 1, %offset
  %and9.i = and i32 %1, %shl8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %entry._ti_ads7950_set_direction.exit_crit_edge, label %if.then.i

entry._ti_ads7950_set_direction.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_ti_ads7950_set_direction.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg.i = xor i32 %shl8.i, -1
  %and4.i = and i32 %1, %neg.i
  %2 = ptrtoint ptr %gpio_cmd_settings_bitmask7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and4.i, ptr %gpio_cmd_settings_bitmask7.i, align 8
  %3 = trunc i32 %and4.i to i16
  %conv.i = or i16 %3, 16384
  %single_tx.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %single_tx.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %single_tx.i, align 16
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 128
  %scan_single_msg.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 4
  %call18.i = tail call i32 @spi_sync(ptr noundef %6, ptr noundef %scan_single_msg.i) #4
  br label %_ti_ads7950_set_direction.exit

_ti_ads7950_set_direction.exit:                   ; preds = %if.then.i, %entry._ti_ads7950_set_direction.exit_crit_edge
  %ret.0.i = phi i32 [ %call18.i, %if.then.i ], [ 0, %entry._ti_ads7950_set_direction.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %slock.i) #4
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %slock.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %slock.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %offset
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cmd_settings_bitmask.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 9
  %0 = ptrtoint ptr %cmd_settings_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_settings_bitmask.i, align 4
  %or.i = or i32 %1, %shl1.i
  store i32 %or.i, ptr %cmd_settings_bitmask.i, align 4
  br label %ti_ads7950_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg.i = xor i32 %shl1.i, -1
  %cmd_settings_bitmask2.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %cmd_settings_bitmask2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_settings_bitmask2.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %cmd_settings_bitmask2.i, align 4
  br label %ti_ads7950_set.exit

ti_ads7950_set.exit:                              ; preds = %if.else.i, %if.then.i
  %cmd_settings_bitmask3.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %cmd_settings_bitmask3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_settings_bitmask3.i, align 4
  %6 = trunc i32 %5 to i16
  %conv.i = or i16 %6, 6144
  %single_tx.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 14
  %7 = ptrtoint ptr %single_tx.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %single_tx.i, align 16
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 128
  %scan_single_msg.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i, i32 0, i32 4
  %call6.i = tail call i32 @spi_sync(ptr noundef %9, ptr noundef %scan_single_msg.i) #4
  tail call void @mutex_unlock(ptr noundef %slock.i) #4
  %call.i3 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %slock.i4 = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %slock.i4, i32 noundef 0) #4
  %gpio_cmd_settings_bitmask7.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i3, i32 0, i32 10
  %10 = ptrtoint ptr %gpio_cmd_settings_bitmask7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_cmd_settings_bitmask7.i, align 8
  %and9.i = and i32 %11, %shl1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %ti_ads7950_set.exit._ti_ads7950_set_direction.exit_crit_edge

ti_ads7950_set.exit._ti_ads7950_set_direction.exit_crit_edge: ; preds = %ti_ads7950_set.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %_ti_ads7950_set_direction.exit

if.then11.i:                                      ; preds = %ti_ads7950_set.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or.i5 = or i32 %11, %shl1.i
  %12 = ptrtoint ptr %gpio_cmd_settings_bitmask7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i5, ptr %gpio_cmd_settings_bitmask7.i, align 8
  %13 = trunc i32 %or.i5 to i16
  %conv.i6 = or i16 %13, 16384
  %single_tx.i7 = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i3, i32 0, i32 14
  %14 = ptrtoint ptr %single_tx.i7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i6, ptr %single_tx.i7, align 16
  %15 = ptrtoint ptr %call.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i3, align 128
  %scan_single_msg.i8 = getelementptr inbounds %struct.ti_ads7950_state, ptr %call.i3, i32 0, i32 4
  %call18.i = tail call i32 @spi_sync(ptr noundef %16, ptr noundef %scan_single_msg.i8) #4
  br label %_ti_ads7950_set_direction.exit

_ti_ads7950_set_direction.exit:                   ; preds = %if.then11.i, %ti_ads7950_set.exit._ti_ads7950_set_direction.exit_crit_edge
  %ret.0.i = phi i32 [ %call18.i, %if.then11.i ], [ 0, %ti_ads7950_set.exit._ti_ads7950_set_direction.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %slock.i4) #4
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %slock = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %slock, i32 noundef 0) #4
  %gpio_cmd_settings_bitmask = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %gpio_cmd_settings_bitmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_cmd_settings_bitmask, align 8
  %shl = shl nuw i32 1, %offset
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cmd_settings_bitmask3 = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %cmd_settings_bitmask3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_settings_bitmask3, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and2 = and i32 %3, %shl
  br label %out

if.end:                                           ; preds = %entry
  %or = or i32 %3, 16
  %4 = ptrtoint ptr %cmd_settings_bitmask3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %cmd_settings_bitmask3, align 4
  %5 = trunc i32 %3 to i16
  %conv = or i16 %5, 6160
  %single_tx = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %single_tx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %single_tx, align 16
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 128
  %scan_single_msg = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 4
  %call7 = tail call i32 @spi_sync(ptr noundef %8, ptr noundef %scan_single_msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %cmd_settings_bitmask3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_settings_bitmask3, align 4
  %and16 = and i32 %10, -17
  store i32 %and16, ptr %cmd_settings_bitmask3, align 4
  %11 = trunc i32 %and16 to i16
  %conv20 = or i16 %11, 6144
  %12 = ptrtoint ptr %single_tx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv20, ptr %single_tx, align 16
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 128
  %call24 = tail call i32 @spi_sync(ptr noundef %14, ptr noundef %scan_single_msg) #4
  br label %out

out:                                              ; preds = %if.end10, %if.end.out_crit_edge, %if.then
  %ret.0 = phi i32 [ %and2, %if.then ], [ %call7, %if.end.out_crit_edge ], [ %call24, %if.end10 ]
  tail call void @mutex_unlock(ptr noundef %slock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_ads7950_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %slock = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %slock, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl1 = shl nuw i32 1, %offset
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cmd_settings_bitmask = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %cmd_settings_bitmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_settings_bitmask, align 4
  %or = or i32 %1, %shl1
  store i32 %or, ptr %cmd_settings_bitmask, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %shl1, -1
  %cmd_settings_bitmask2 = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %cmd_settings_bitmask2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_settings_bitmask2, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %cmd_settings_bitmask2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmd_settings_bitmask3 = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %cmd_settings_bitmask3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_settings_bitmask3, align 4
  %6 = trunc i32 %5 to i16
  %conv = or i16 %6, 6144
  %single_tx = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %single_tx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %single_tx, align 16
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 128
  %scan_single_msg = getelementptr inbounds %struct.ti_ads7950_state, ptr %call, i32 0, i32 4
  %call6 = tail call i32 @spi_sync(ptr noundef %9, ptr noundef %scan_single_msg) #4
  tail call void @mutex_unlock(ptr noundef %slock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
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
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %slock.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %slock.i, i32 noundef 0) #4
  %ch.tr.i = trunc i32 %4 to i16
  %5 = shl i16 %ch.tr.i, 7
  %conv.i = or i16 %5, 4096
  %single_tx.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %single_tx.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %single_tx.i, align 16
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %scan_single_msg.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %1, i32 0, i32 4
  %call1.i = tail call i32 @spi_sync(ptr noundef %8, ptr noundef %scan_single_msg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %ti_ads7950_scan_direct.exit.thread, label %ti_ads7950_scan_direct.exit

ti_ads7950_scan_direct.exit.thread:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %single_rx.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %single_rx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %single_rx.i, align 2
  %conv2.i = zext i16 %10 to i32
  tail call void @mutex_unlock(ptr noundef %slock.i) #4
  br label %if.end

ti_ads7950_scan_direct.exit:                      ; preds = %sw.bb
  tail call void @mutex_unlock(ptr noundef %slock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %ti_ads7950_scan_direct.exit.cleanup_crit_edge, label %ti_ads7950_scan_direct.exit.if.end_crit_edge

ti_ads7950_scan_direct.exit.if.end_crit_edge:     ; preds = %ti_ads7950_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

ti_ads7950_scan_direct.exit.cleanup_crit_edge:    ; preds = %ti_ads7950_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ti_ads7950_scan_direct.exit.if.end_crit_edge, %ti_ads7950_scan_direct.exit.thread
  %ret.0.i39 = phi i32 [ %conv2.i, %ti_ads7950_scan_direct.exit.thread ], [ %call1.i, %ti_ads7950_scan_direct.exit.if.end_crit_edge ]
  %11 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address, align 4
  %13 = lshr i32 %ret.0.i39, 12
  %and = and i32 %13, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and)
  %cmp3.not = icmp eq i32 %12, %and
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 1
  %conv = zext i8 %15 to i32
  %shr642 = lshr i32 %ret.0.i39, %conv
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %realbits, align 1
  %conv8 = zext i8 %17 to i32
  %notmask34 = shl nsw i32 -1, %conv8
  %sub = xor i32 %notmask34, -1
  %and9 = and i32 %shr642, %sub
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and9, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %vref_mv.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %vref_mv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vref_mv.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i35 = icmp eq i32 %20, 0
  br i1 %tobool.not.i35, label %if.else.i, label %sw.bb10.ti_ads7950_get_range.exit_crit_edge

sw.bb10.ti_ads7950_get_range.exit_crit_edge:      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %ti_ads7950_get_range.exit

if.else.i:                                        ; preds = %sw.bb10
  %reg.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i, align 4
  %call.i = tail call i32 @regulator_get_voltage(ptr noundef %22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.else.i.cleanup_crit_edge, label %if.end.i36

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i36:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %div14.i = udiv i32 %call.i, 1000
  br label %ti_ads7950_get_range.exit

ti_ads7950_get_range.exit:                        ; preds = %if.end.i36, %sw.bb10.ti_ads7950_get_range.exit_crit_edge
  %vref.0.i = phi i32 [ %div14.i, %if.end.i36 ], [ %20, %sw.bb10.ti_ads7950_get_range.exit_crit_edge ]
  %cmd_settings_bitmask.i = getelementptr inbounds %struct.ti_ads7950_state, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %cmd_settings_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_settings_bitmask.i, align 4
  %and.i = lshr i32 %24, 6
  %and.lobit.i = and i32 %and.i, 1
  %spec.select.i = shl i32 %vref.0.i, %and.lobit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp12 = icmp slt i32 %spec.select.i, 0
  br i1 %cmp12, label %ti_ads7950_get_range.exit.cleanup_crit_edge, label %if.end15

ti_ads7950_get_range.exit.cleanup_crit_edge:      ; preds = %ti_ads7950_get_range.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %ti_ads7950_get_range.exit
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select.i, ptr %val, align 4
  %realbits17 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %realbits17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %realbits17, align 1
  %conv18 = zext i8 %27 to i32
  %notmask = shl nsw i32 -1, %conv18
  %sub20 = xor i32 %notmask, -1
  %28 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub20, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %ti_ads7950_get_range.exit.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end5, %if.end.cleanup_crit_edge, %ti_ads7950_scan_direct.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.end15 ], [ 1, %if.end5 ], [ %call1.i, %ti_ads7950_scan_direct.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %spec.select.i, %ti_ads7950_get_range.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_ads7950_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %active_scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef %3, i32 noundef 0) #4
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %5)
  %cmp24 = icmp slt i32 %call1, %5
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.025 = phi i32 [ %call4, %for.body.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.025 to i16
  %6 = shl i16 %i.0.tr, 7
  %conv = or i16 %6, 4096
  %inc = add i32 %len.026, 1
  %arrayidx = getelementptr %struct.ti_ads7950_state, ptr %1, i32 0, i32 13, i32 %len.026
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %arrayidx, align 2
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_channels, align 4
  %add = add nsw i32 %i.025, 1
  %call4 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef %9, i32 noundef %add) #4
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_channels, align 4
  %cmp = icmp slt i32 %call4, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %inc6 = add i32 %len.0.lcssa, 1
  %arrayidx7 = getelementptr %struct.ti_ads7950_state, ptr %1, i32 0, i32 13, i32 %len.0.lcssa
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %arrayidx7, align 2
  %arrayidx10 = getelementptr %struct.ti_ads7950_state, ptr %1, i32 0, i32 13, i32 %inc6
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx10, align 2
  %inc9 = shl i32 %len.0.lcssa, 1
  %mul = add i32 %inc9, 4
  %len11 = getelementptr inbounds %struct.ti_ads7950_state, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %len11, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_ti_ads7950__290_722_ti_ads7950_driver_init6, !1, !"__initcall__kmod_ti_ads7950__290_722_ti_ads7950_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 722, i32 1}
!2 = !{ptr @__exitcall_ti_ads7950_driver_exit, !1, !"__exitcall_ti_ads7950_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 724, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 725, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 726, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 715, i32 11}
!12 = !{ptr @ti_ads7950_driver, !13, !"ti_ads7950_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 713, i32 26}
!14 = !{ptr @ti_ads7950_id, !15, !"ti_ads7950_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 679, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 543, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ti_ads7950_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ti_ads7950_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ti_ads7950_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 599, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 601, i32 42}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 604, i32 10}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 610, i32 3}
!33 = !{ptr @ti_ads7950_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ti_ads7950_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 617, i32 3}
!37 = !{ptr @ti_ads7950_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ti_ads7950_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 623, i32 3}
!41 = !{ptr @ti_ads7950_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ti_ads7950_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 629, i32 3}
!45 = !{ptr @ti_ads7950_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ti_ads7950_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ti_ads7950_probe.lock_key, !48, !"lock_key", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 645, i32 8}
!49 = !{ptr @ti_ads7950_probe.request_key, !48, !"request_key", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 647, i32 3}
!52 = !{ptr @ti_ads7950_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ti_ads7950_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @ti_ads7950_chip_info, !55, !"ti_ads7950_chip_info", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 228, i32 42}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 215, i32 8}
!58 = !{ptr @ti_ads7950_channels, !57, !"ti_ads7950_channels", i1 false, i1 false}
!59 = !{ptr @ti_ads7951_channels, !60, !"ti_ads7951_channels", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 216, i32 8}
!61 = !{ptr @ti_ads7952_channels, !62, !"ti_ads7952_channels", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 217, i32 8}
!63 = !{ptr @ti_ads7953_channels, !64, !"ti_ads7953_channels", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 218, i32 8}
!65 = !{ptr @ti_ads7954_channels, !66, !"ti_ads7954_channels", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 219, i32 8}
!67 = !{ptr @ti_ads7955_channels, !68, !"ti_ads7955_channels", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 220, i32 8}
!69 = !{ptr @ti_ads7956_channels, !70, !"ti_ads7956_channels", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 221, i32 8}
!71 = !{ptr @ti_ads7957_channels, !72, !"ti_ads7957_channels", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 222, i32 8}
!73 = !{ptr @ti_ads7958_channels, !74, !"ti_ads7958_channels", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 223, i32 8}
!75 = !{ptr @ti_ads7959_channels, !76, !"ti_ads7959_channels", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 224, i32 8}
!77 = !{ptr @ti_ads7960_channels, !78, !"ti_ads7960_channels", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 225, i32 8}
!79 = !{ptr @ti_ads7961_channels, !80, !"ti_ads7961_channels", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 226, i32 8}
!81 = !{ptr @ti_ads7950_info, !82, !"ti_ads7950_info", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 401, i32 30}
!83 = !{ptr @ads7950_of_table, !84, !"ads7950_of_table", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/ti-ads7950.c", i32 696, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
