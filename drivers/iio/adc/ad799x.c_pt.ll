; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad799x.c_pt.bc'
source_filename = "../drivers/iio/adc/ad799x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.ad799x_chip_info = type { i32, %struct.ad799x_chip_config, %struct.ad799x_chip_config }
%struct.ad799x_chip_config = type { [9 x %struct.iio_chan_spec], i16, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.ad799x_state = type { ptr, ptr, ptr, ptr, i32, i16, ptr, i32 }

@__initcall__kmod_ad799x__288_969_ad799x_driver_init6 = internal global ptr @ad799x_driver_init, section ".initcall6.init", align 4
@ad799x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad799x_probe, ptr @ad799x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad799x_pm_ops, ptr null, ptr null }, ptr @ad799x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad799x_driver_exit = internal global ptr @ad799x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [63 x i8] c"ad799x.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [45 x i8] c"ad799x.description=Analog Devices AD799x ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"ad799x.file=drivers/iio/adc/ad799x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"ad799x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad799x\00", [25 x i8] zeroinitializer }, align 32
@ad799x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ad799x_suspend, ptr @ad799x_resume, ptr @ad799x_suspend, ptr @ad799x_resume, ptr @ad799x_suspend, ptr @ad799x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ad799x_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad7991\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad7995\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ad7999\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ad7992\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ad7993\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ad7994\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ad7997\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"ad7998\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ad799x_chip_info_tbl = internal constant { [8 x %struct.ad799x_chip_info], [3200 x i8] } { [8 x %struct.ad799x_chip_info] [%struct.ad799x_chip_info { i32 5, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 0, ptr @ad7991_info }, %struct.ad799x_chip_config zeroinitializer }, %struct.ad799x_chip_info { i32 5, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 0, ptr @ad7991_info }, %struct.ad799x_chip_config zeroinitializer }, %struct.ad799x_chip_info { i32 5, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 0, ptr @ad7991_info }, %struct.ad799x_chip_config zeroinitializer }, %struct.ad799x_chip_info { i32 3, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 0, ptr @ad7993_4_7_8_noirq_info }, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 6, ptr @ad7993_4_7_8_irq_info } }, %struct.ad799x_chip_info { i32 5, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 0, ptr @ad7993_4_7_8_noirq_info }, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 6, ptr @ad7993_4_7_8_irq_info } }, %struct.ad799x_chip_info { i32 5, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 0, ptr @ad7993_4_7_8_noirq_info }, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], i16 6, ptr @ad7993_4_7_8_irq_info } }, %struct.ad799x_chip_info { i32 9, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], i16 0, ptr @ad7993_4_7_8_noirq_info }, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.86 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], i16 6, ptr @ad7993_4_7_8_irq_info } }, %struct.ad799x_chip_info { i32 9, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], i16 0, ptr @ad7993_4_7_8_noirq_info }, %struct.ad799x_chip_config { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad799x_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], i16 6, ptr @ad7993_4_7_8_irq_info } }], [3200 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad799x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 812, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Using VCC reference voltage\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad799x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad799x.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad799x_probe._entry_ptr = internal global ptr @ad799x_probe._entry, section ".printk_index", align 4
@ad799x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 825, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Using external reference voltage\0A\00", [62 x i8] zeroinitializer }, align 32
@ad799x_probe._entry_ptr.10 = internal global ptr @ad799x_probe._entry.8, section ".printk_index", align 4
@ad799x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 832, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Supplied reference not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ad799x_probe._entry_ptr.14 = internal global ptr @ad799x_probe._entry.11, section ".printk_index", align 4
@ad7991_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad799x_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad799x_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7993_4_7_8_noirq_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad799x_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad799x_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad799x_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 4, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@ad7993_4_7_8_irq_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @ad799x_event_attrs_group, ptr null, ptr @ad799x_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad799x_read_event_config, ptr @ad799x_write_event_config, ptr @ad799x_read_event_value, ptr @ad799x_write_event_value, ptr null, ptr @ad799x_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad799x_event_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad799x_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad799x_event_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_sampling_frequency, ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad799x_read_frequency, ptr @ad799x_write_frequency }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.17, %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sampling_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@ad7998_frequencies = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 15625, i32 7812, i32 3906, i32 0, i32 976, i32 488, i32 244], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"15625 7812 3906 1953 976 488 244 0\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@ad799x_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 919, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to enable vcc regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad799x_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ad799x_resume._entry_ptr = internal global ptr @ad799x_resume._entry, section ".printk_index", align 4
@ad799x_resume._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.5, i32 927, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to enable vref regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@ad799x_resume._entry_ptr.24 = internal global ptr @ad799x_resume._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 244, i64 488, i64 976, i64 3906, i64 7812, i64 15625]
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"ad799x_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 960, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 962, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"ad799x_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 944, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"ad799x_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 946, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"ad799x_chip_info_tbl\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 599, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 799, i32 45 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 807, i32 55 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 812, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 825, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 832, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"ad7991_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 536, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"ad7993_4_7_8_noirq_info\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 541, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"ad799x_events\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 556, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"ad7993_4_7_8_irq_info\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 546, i32 30 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"ad799x_event_attrs_group\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 532, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"ad799x_event_attributes\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 526, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_sampling_frequency\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 521, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 336, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"ad7998_frequencies\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 315, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 524, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 919, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [28 x i8] c"../drivers/iio/adc/ad799x.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 927, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ad799x_driver_exit, ptr @__initcall__kmod_ad799x__288_969_ad799x_driver_init6, ptr @ad799x_driver_exit, ptr @ad799x_probe._entry, ptr @ad799x_probe._entry.11, ptr @ad799x_probe._entry.8, ptr @ad799x_probe._entry_ptr, ptr @ad799x_probe._entry_ptr.10, ptr @ad799x_probe._entry_ptr.14, ptr @ad799x_resume._entry, ptr @ad799x_resume._entry.22, ptr @ad799x_resume._entry_ptr, ptr @ad799x_resume._entry_ptr.24, ptr @ad799x_driver, ptr @.str, ptr @ad799x_pm_ops, ptr @ad799x_id, ptr @ad799x_chip_info_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @ad7991_info, ptr @ad7993_4_7_8_noirq_info, ptr @ad799x_events, ptr @ad7993_4_7_8_irq_info, ptr @ad799x_event_attrs_group, ptr @ad799x_event_attributes, ptr @iio_dev_attr_sampling_frequency, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.15, ptr @.str.16, ptr @ad7998_frequencies, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_chip_info_tbl to i32), i32 12832, i32 16032, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7991_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7993_4_7_8_noirq_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7993_4_7_8_irq_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_event_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_event_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7998_frequencies to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad799x_resume._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad799x_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad799x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @ad799x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [8 x %struct.ad799x_chip_info], ptr @ad799x_chip_info_tbl, i32 0, i32 %1
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 32) #9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %id3 = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %id3, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp slt i32 %9, 1
  %10 = and i32 %1, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %tobool.not = icmp ult i32 %10, 3
  %or.cond = select i1 %cmp4, i1 true, i1 %tobool.not
  %noirq_config = getelementptr [8 x %struct.ad799x_chip_info], ptr @ad799x_chip_info_tbl, i32 0, i32 %1, i32 1
  %irq_config = getelementptr [8 x %struct.ad799x_chip_info], ptr @ad799x_chip_info_tbl, i32 0, i32 %1, i32 2
  %irq_config.sink = select i1 %or.cond, ptr %noirq_config, ptr %irq_config
  %11 = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %irq_config.sink, ptr %11, align 4
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %reg = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call18 = tail call i32 @regulator_enable(ptr noundef %call10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %call23 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %vref = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call23, ptr %vref, align 4
  %cmp.i177 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then26, label %if.end21.if.end37_crit_edge

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then26:                                        ; preds = %if.end21
  %16 = ptrtoint ptr %call23 to i32
  %cmp29 = icmp eq ptr %call23, inttoptr (i32 -19 to ptr)
  br i1 %cmp29, label %if.then30, label %if.then26.error_disable_reg_crit_edge

if.then26.error_disable_reg_crit_edge:            ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_disable_reg

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vref, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  %18 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %vref, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end21.if.end37_crit_edge
  %19 = phi ptr [ %.pr, %if.then30 ], [ %call23, %if.end21.if.end37_crit_edge ]
  %tobool39.not = icmp eq ptr %19, null
  br i1 %tobool39.not, label %if.end37.if.end65_crit_edge, label %if.then40

if.end37.if.end65_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then40:                                        ; preds = %if.end37
  %20 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %switch = icmp ult i32 %21, 3
  br i1 %switch, label %do.end51, label %if.else58

do.end51:                                         ; preds = %if.then40
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  %22 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vref, align 4
  %call54 = tail call i32 @regulator_enable(ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.end51.if.end65_crit_edge, label %do.end51.error_disable_reg_crit_edge

do.end51.error_disable_reg_crit_edge:             ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_disable_reg

do.end51.if.end65_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.else58:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %vref, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %if.end65

if.end65:                                         ; preds = %if.else58, %do.end51.if.end65_crit_edge, %if.end37.if.end65_crit_edge
  %extra_config.0 = phi i16 [ 8, %do.end51.if.end65_crit_edge ], [ 0, %if.else58 ], [ 0, %if.end37.if.end65_crit_edge ]
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %client, ptr %3, align 4
  %name67 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %26 = ptrtoint ptr %name67 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %id, ptr %name67, align 8
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %11, align 4
  %info69 = getelementptr inbounds %struct.ad799x_chip_config, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %info69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info69, align 4
  %info70 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %31 = ptrtoint ptr %info70 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %info70, align 8
  %32 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %call, align 8
  %33 = load ptr, ptr %11, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %34 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %channels, align 8
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %num_channels73 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %37 = ptrtoint ptr %num_channels73 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %num_channels73, align 4
  %38 = load ptr, ptr %11, align 4
  %default_config = getelementptr inbounds %struct.ad799x_chip_config, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %default_config to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %default_config, align 4
  %or75 = or i16 %40, %extra_config.0
  %call77 = tail call fastcc i32 @ad799x_update_config(ptr noundef %3, i16 noundef zeroext %or75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end65.error_disable_vref_crit_edge

if.end65.error_disable_vref_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_disable_vref

if.end80:                                         ; preds = %if.end65
  %call81 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ad799x_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.error_disable_vref_crit_edge

if.end80.error_disable_vref_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_disable_vref

if.end84:                                         ; preds = %if.end80
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp86 = icmp sgt i32 %42, 0
  br i1 %cmp86, label %if.then88, label %if.end84.if.end97_crit_edge

if.end84.if.end97_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then88:                                        ; preds = %if.end84
  %name91 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call93 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %42, ptr noundef null, ptr noundef nonnull @ad799x_event_handler, i32 noundef 8194, ptr noundef %name91, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then88.if.end97_crit_edge, label %if.then88.error_cleanup_ring_crit_edge

if.then88.error_cleanup_ring_crit_edge:           ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_cleanup_ring

if.then88.if.end97_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.end97:                                         ; preds = %if.then88.if.end97_crit_edge, %if.end84.if.end97_crit_edge
  %call98 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %if.end97.error_cleanup_ring_crit_edge

if.end97.error_cleanup_ring_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_cleanup_ring

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error_cleanup_ring:                               ; preds = %if.end97.error_cleanup_ring_crit_edge, %if.then88.error_cleanup_ring_crit_edge
  %ret.0 = phi i32 [ %call93, %if.then88.error_cleanup_ring_crit_edge ], [ %call98, %if.end97.error_cleanup_ring_crit_edge ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #9
  br label %error_disable_vref

error_disable_vref:                               ; preds = %error_cleanup_ring, %if.end80.error_disable_vref_crit_edge, %if.end65.error_disable_vref_crit_edge
  %ret.1 = phi i32 [ %call77, %if.end65.error_disable_vref_crit_edge ], [ %call81, %if.end80.error_disable_vref_crit_edge ], [ %ret.0, %error_cleanup_ring ]
  %43 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vref, align 4
  %tobool103.not = icmp eq ptr %44, null
  br i1 %tobool103.not, label %error_disable_vref.error_disable_reg_crit_edge, label %if.then104

error_disable_vref.error_disable_reg_crit_edge:   ; preds = %error_disable_vref
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_disable_reg

if.then104:                                       ; preds = %error_disable_vref
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = tail call i32 @regulator_disable(ptr noundef nonnull %44) #9
  br label %error_disable_reg

error_disable_reg:                                ; preds = %if.then104, %error_disable_vref.error_disable_reg_crit_edge, %do.end51.error_disable_reg_crit_edge, %if.then26.error_disable_reg_crit_edge
  %ret.2 = phi i32 [ %call54, %do.end51.error_disable_reg_crit_edge ], [ %ret.1, %if.then104 ], [ %ret.1, %error_disable_vref.error_disable_reg_crit_edge ], [ %16, %if.then26.error_disable_reg_crit_edge ]
  %45 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg, align 4
  %call109 = tail call i32 @regulator_disable(ptr noundef %46) #9
  br label %cleanup

cleanup:                                          ; preds = %error_disable_reg, %if.end97.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then13 ], [ %ret.2, %error_disable_reg ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #9
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #9
  %vref = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %7) #9
  %rx_buf = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf, align 4
  tail call void @kfree(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad799x_update_config(ptr nocapture noundef %st, i16 noundef zeroext %config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.ad799x_state, ptr %st, i32 0, i32 4
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %ad799x_write_config.exit.thread [
    i32 6, label %entry.sw.bb.i_crit_edge
    i32 7, label %entry.sw.bb.i_crit_edge29
    i32 3, label %entry.sw.bb1.i_crit_edge
    i32 4, label %entry.sw.bb1.i_crit_edge30
    i32 5, label %entry.sw.bb1.i_crit_edge31
  ]

entry.sw.bb1.i_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge30:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge29
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %config) #9
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %4, i8 noundef zeroext 2, i16 noundef zeroext %5) #9
  br label %ad799x_write_config.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge30, %entry.sw.bb1.i_crit_edge31
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st, align 4
  %conv.i = trunc i16 %config to i8
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #9
  br label %ad799x_write_config.exit

ad799x_write_config.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %config.i = getelementptr inbounds %struct.ad799x_state, ptr %st, i32 0, i32 5
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %config, ptr %config.i, align 4
  br label %if.end

ad799x_write_config.exit:                         ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call3.i, %sw.bb1.i ], [ %call.i.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ad799x_write_config.exit.cleanup_crit_edge, label %if.endthread-pre-split

ad799x_write_config.exit.cleanup_crit_edge:       ; preds = %ad799x_write_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.endthread-pre-split:                           ; preds = %ad799x_write_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %id.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %ad799x_write_config.exit.thread
  %10 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %1, %ad799x_write_config.exit.thread ]
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %10, label %sw.default.i19 [
    i32 6, label %if.end.sw.bb.i14_crit_edge
    i32 7, label %if.end.sw.bb.i14_crit_edge32
    i32 3, label %if.end.ad799x_read_config.exit_crit_edge
    i32 4, label %if.end.ad799x_read_config.exit_crit_edge33
    i32 5, label %if.end.ad799x_read_config.exit_crit_edge34
  ]

if.end.ad799x_read_config.exit_crit_edge34:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad799x_read_config.exit

if.end.ad799x_read_config.exit_crit_edge33:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad799x_read_config.exit

if.end.ad799x_read_config.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad799x_read_config.exit

if.end.sw.bb.i14_crit_edge32:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i14

if.end.sw.bb.i14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i14

sw.bb.i14:                                        ; preds = %if.end.sw.bb.i14_crit_edge, %if.end.sw.bb.i14_crit_edge32
  %12 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %st, align 4
  %call.i.i13 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %13, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp.i.i = icmp slt i32 %call.i.i13, 0
  %conv.i.i = trunc i32 %call.i.i13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %14 to i32
  br i1 %cmp.i.i, label %sw.bb.i14.cleanup_crit_edge, label %sw.bb.i14.if.end4_crit_edge

sw.bb.i14.if.end4_crit_edge:                      ; preds = %sw.bb.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

sw.bb.i14.cleanup_crit_edge:                      ; preds = %sw.bb.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default.i19:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %config.i17 = getelementptr inbounds %struct.ad799x_state, ptr %st, i32 0, i32 5
  %15 = ptrtoint ptr %config.i17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %config.i17, align 4
  %conv.i18 = zext i16 %16 to i32
  br label %if.end4

ad799x_read_config.exit:                          ; preds = %if.end.ad799x_read_config.exit_crit_edge, %if.end.ad799x_read_config.exit_crit_edge33, %if.end.ad799x_read_config.exit_crit_edge34
  %17 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %st, align 4
  %call3.i15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i15)
  %cmp2 = icmp slt i32 %call3.i15, 0
  br i1 %cmp2, label %ad799x_read_config.exit.cleanup_crit_edge, label %ad799x_read_config.exit.if.end4_crit_edge

ad799x_read_config.exit.if.end4_crit_edge:        ; preds = %ad799x_read_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

ad799x_read_config.exit.cleanup_crit_edge:        ; preds = %ad799x_read_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %ad799x_read_config.exit.if.end4_crit_edge, %sw.default.i19, %sw.bb.i14.if.end4_crit_edge
  %retval.0.i2025 = phi i32 [ %call3.i15, %ad799x_read_config.exit.if.end4_crit_edge ], [ %conv1.i.i, %sw.bb.i14.if.end4_crit_edge ], [ %conv.i18, %sw.default.i19 ]
  %conv = trunc i32 %retval.0.i2025 to i16
  %config5 = getelementptr inbounds %struct.ad799x_state, ptr %st, i32 0, i32 5
  %19 = ptrtoint ptr %config5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %config5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %ad799x_read_config.exit.cleanup_crit_edge, %sw.bb.i14.cleanup_crit_edge, %ad799x_write_config.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %retval.0.i, %ad799x_write_config.exit.cleanup_crit_edge ], [ %call3.i15, %ad799x_read_config.exit.cleanup_crit_edge ], [ %call.i.i13, %sw.bb.i14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %id = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %5, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge25
    i32 2, label %entry.sw.bb_crit_edge26
    i32 3, label %entry.sw.bb3_crit_edge
    i32 4, label %entry.sw.bb3_crit_edge27
    i32 5, label %entry.sw.bb3_crit_edge28
    i32 6, label %entry.sw.epilog_crit_edge
    i32 7, label %entry.sw.epilog_crit_edge29
  ]

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb3_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25, %entry.sw.bb_crit_edge26
  %config = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %config, align 4
  %conv = zext i16 %8 to i32
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %active_scan_mask, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %shl = shl i32 %12, 4
  %or = or i32 %shl, %conv
  %conv2 = trunc i32 %or to i8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge27, %entry.sw.bb3_crit_edge28
  %active_scan_mask4 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %active_scan_mask4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %active_scan_mask4, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %.tr = trunc i32 %16 to i8
  %conv7 = shl i8 %.tr, 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge29
  %cmd.0 = phi i8 [ 0, %sw.default ], [ %conv7, %sw.bb3 ], [ %conv2, %sw.bb ], [ 112, %entry.sw.epilog_crit_edge ], [ 112, %entry.sw.epilog_crit_edge29 ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %transfer_size = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %transfer_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_size, align 4
  %conv9 = trunc i32 %20 to i8
  %rx_buf = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf, align 4
  %call10 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %18, i8 noundef zeroext %cmd.0, i8 noundef zeroext %conv9, ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %sw.epilog.out_crit_edge, label %if.end

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %sw.epilog
  %23 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf, align 4
  %call13 = tail call i64 @iio_get_time_ns(ptr noundef %1) #9
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %scan_timestamp.i, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %28, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %24, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call13, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %24) #9
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %sw.epilog.out_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %31) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.done_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.028
  %and = and i32 %shl, %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %and9 = and i32 %i.028, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %6 = lshr i32 %i.028, 1
  %conv13.mask = and i32 %6, 65535
  %conv14 = zext i32 %conv13.mask to i64
  %. = select i1 %tobool10.not, i64 562949953421312, i64 281474976710656
  %or15 = or i64 %., %conv14
  %call16 = tail call i64 @iio_get_time_ns(ptr noundef %private) #9
  %call17 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef %or15, i64 noundef %call16) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

done:                                             ; preds = %for.inc.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
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
define internal i32 @ad799x_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scan_index, align 4
  %id.i = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %6, label %if.end.ad799x_scan_direct.exit.thread_crit_edge [
    i32 0, label %if.end.sw.bb.i_crit_edge
    i32 1, label %if.end.sw.bb.i_crit_edge45
    i32 2, label %if.end.sw.bb.i_crit_edge46
    i32 3, label %if.end.sw.bb3.i_crit_edge
    i32 4, label %if.end.sw.bb3.i_crit_edge47
    i32 5, label %if.end.sw.bb3.i_crit_edge48
    i32 6, label %if.end.sw.bb7.i_crit_edge
    i32 7, label %if.end.sw.bb7.i_crit_edge49
  ]

if.end.sw.bb7.i_crit_edge49:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

if.end.sw.bb7.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i

if.end.sw.bb3.i_crit_edge48:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge47:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.sw.bb.i_crit_edge46:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.ad799x_scan_direct.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad799x_scan_direct.exit.thread

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge45, %if.end.sw.bb.i_crit_edge46
  %config.i = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %config.i, align 4
  %conv.i = zext i16 %9 to i32
  %shl1.i = shl i32 16, %4
  %or.i = or i32 %shl1.i, %conv.i
  %conv2.i = trunc i32 %or.i to i8
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.sw.bb3.i_crit_edge, %if.end.sw.bb3.i_crit_edge47, %if.end.sw.bb3.i_crit_edge48
  %shl5.i = shl i32 16, %4
  %conv6.i = trunc i32 %shl5.i to i8
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.sw.bb7.i_crit_edge, %if.end.sw.bb7.i_crit_edge49
  %ch.tr.i = trunc i32 %4 to i8
  %10 = shl i8 %ch.tr.i, 4
  %conv10.i = or i8 %10, -128
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb3.i, %sw.bb.i
  %cmd.0.i = phi i8 [ %conv10.i, %sw.bb7.i ], [ %conv6.i, %sw.bb3.i ], [ %conv2.i, %sw.bb.i ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %12, i8 noundef zeroext %cmd.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.epilog.i.ad799x_scan_direct.exit.thread_crit_edge, label %if.end4

sw.epilog.i.ad799x_scan_direct.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad799x_scan_direct.exit.thread

ad799x_scan_direct.exit.thread:                   ; preds = %sw.epilog.i.ad799x_scan_direct.exit.thread_crit_edge, %if.end.ad799x_scan_direct.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.ad799x_scan_direct.exit.thread_crit_edge ], [ %call.i.i, %sw.epilog.i.ad799x_scan_direct.exit.thread_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

if.end4:                                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %call.i.i to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %13 to i32
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 1
  %conv = zext i8 %15 to i32
  %shr43 = lshr i32 %conv1.i.i, %conv
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %realbits, align 1
  %conv6 = zext i8 %17 to i32
  %sub7 = sub nsw i32 32, %conv6
  %shr8 = lshr i32 -1, %sub7
  %and9 = and i32 %shr8, %shr43
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and9, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %vref = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vref, align 4
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %20) #9
  br label %if.end16

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %reg = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %call15 = tail call i32 @regulator_get_voltage(ptr noundef %22) #9
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %ret.0 = phi i32 [ %call14, %if.then12 ], [ %call15, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %div44 = udiv i32 %ret.0, 1000
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div44, ptr %val, align 4
  %realbits22 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %realbits22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %realbits22, align 1
  %conv23 = zext i8 %25 to i32
  %26 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv23, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end4, %ad799x_scan_direct.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end20 ], [ 1, %if.end4 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %ret.0, %if.end16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %ad799x_scan_direct.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %rx_buf = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buf, align 4
  tail call void @kfree(ptr noundef %3) #9
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  %4 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_bytes, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #13
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i23

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i23:                                       ; preds = %entry
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %7 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength, align 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %scan_mask, i32 noundef %8) #9
  %mul = shl i32 %call4.i, 1
  %transfer_size = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %transfer_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %transfer_size, align 4
  %id = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %.off = add i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %sw.bb, label %if.end.i23.cleanup_crit_edge

if.end.i23.cleanup_crit_edge:                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.i23
  %config = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %config, align 4
  %14 = and i16 %13, -4081
  store i16 %14, ptr %config, align 4
  %15 = ptrtoint ptr %scan_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_mask, align 4
  %.tr = trunc i32 %16 to i16
  %17 = shl i16 %.tr, 4
  %conv8 = or i16 %17, %14
  store i16 %conv8, ptr %config, align 4
  %18 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %11, label %sw.bb.cleanup_crit_edge [
    i32 6, label %sw.bb.sw.bb.i_crit_edge
    i32 7, label %sw.bb.sw.bb.i_crit_edge27
    i32 3, label %sw.bb.sw.bb1.i_crit_edge
    i32 4, label %sw.bb.sw.bb1.i_crit_edge28
    i32 5, label %sw.bb.sw.bb1.i_crit_edge29
  ]

sw.bb.sw.bb1.i_crit_edge29:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

sw.bb.sw.bb1.i_crit_edge28:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

sw.bb.sw.bb1.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

sw.bb.sw.bb.i_crit_edge27:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge27
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv8) #9
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %20, i8 noundef zeroext 2, i16 noundef zeroext %21) #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb.sw.bb1.i_crit_edge, %sw.bb.sw.bb1.i_crit_edge28, %sw.bb.sw.bb1.i_crit_edge29
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %conv.i = trunc i16 %conv8 to i8
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1.i, %sw.bb.i, %sw.bb.cleanup_crit_edge, %if.end.i23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.i23.cleanup_crit_edge ], [ %call3.i, %sw.bb1.i ], [ %call.i.i, %sw.bb.i ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad799x_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %config, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = lshr i32 %conv, 4
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_index, align 4
  %7 = lshr i32 %4, %6
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_write_event_config(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool2.not = icmp eq i32 %state, 0
  %scan_index6 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %scan_index6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_index6, align 4
  %shl8 = shl i32 16, %3
  %config9 = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %config9 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %config9, align 4
  %6 = trunc i32 %shl8 to i16
  %7 = xor i16 %6, -1
  %conv11 = and i16 %5, %7
  %conv5 = or i16 %5, %6
  %conv11.sink = select i1 %tobool2.not, i16 %conv11, i16 %conv5
  %config13 = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv11.sink)
  %tobool15.not = icmp ult i16 %conv11.sink, 16
  %and24 = and i16 %conv11.sink, -5
  %masksel = select i1 %tobool15.not, i16 0, i16 4
  %storemerge = or i16 %masksel, %and24
  %8 = ptrtoint ptr %config13 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %storemerge, ptr %config13, align 4
  %id.i = getelementptr inbounds %struct.ad799x_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %10, label %if.end.ad799x_write_config.exit_crit_edge [
    i32 6, label %if.end.sw.bb.i_crit_edge
    i32 7, label %if.end.sw.bb.i_crit_edge41
    i32 3, label %if.end.sw.bb1.i_crit_edge
    i32 4, label %if.end.sw.bb1.i_crit_edge42
    i32 5, label %if.end.sw.bb1.i_crit_edge43
  ]

if.end.sw.bb1.i_crit_edge43:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge42:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end.sw.bb.i_crit_edge41:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.ad799x_write_config.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad799x_write_config.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge41
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %storemerge) #9
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext 2, i16 noundef zeroext %14) #9
  br label %ad799x_write_config.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge42, %if.end.sw.bb1.i_crit_edge43
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %conv.i = trunc i16 %storemerge to i8
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #9
  br label %ad799x_write_config.exit

ad799x_write_config.exit:                         ; preds = %sw.bb1.i, %sw.bb.i, %if.end.ad799x_write_config.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %sw.bb1.i ], [ %call.i.i, %sw.bb.i ], [ 0, %if.end.ad799x_write_config.exit_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

cleanup:                                          ; preds = %ad799x_write_config.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ad799x_write_config.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_read_event_value(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %info, label %entry.ad799x_threshold_reg.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
  ]

entry.ad799x_threshold_reg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad799x_threshold_reg.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel.i, align 4
  %mul.i = mul i32 %6, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %mul.i, 4
  br label %ad799x_threshold_reg.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %add3.i = add i32 %mul.i, 5
  br label %ad799x_threshold_reg.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %channel5.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel5.i, align 4
  %mul6.i = mul i32 %8, 3
  %add7.i = add i32 %mul6.i, 6
  br label %ad799x_threshold_reg.exit

ad799x_threshold_reg.exit:                        ; preds = %sw.bb4.i, %if.else.i, %if.then.i, %entry.ad799x_threshold_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %sw.bb4.i ], [ %add.i, %if.then.i ], [ %add3.i, %if.else.i ], [ -22, %entry.ad799x_threshold_reg.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i8
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i18 = icmp slt i32 %call.i, 0
  tail call void @mutex_unlock(ptr noundef %mlock) #9
  br i1 %cmp.i18, label %ad799x_threshold_reg.exit.cleanup_crit_edge, label %if.end

ad799x_threshold_reg.exit.cleanup_crit_edge:      ; preds = %ad799x_threshold_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ad799x_threshold_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %call.i to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %conv1.i = zext i16 %9 to i32
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shift, align 1
  %conv5 = zext i8 %11 to i32
  %shr = lshr i32 %conv1.i, %conv5
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %realbits, align 1
  %conv7 = zext i8 %13 to i32
  %sub8 = sub nsw i32 32, %conv7
  %shr9 = lshr i32 -1, %sub8
  %and10 = and i32 %shr9, %shr
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and10, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ad799x_threshold_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ %call.i, %ad799x_threshold_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_write_event_value(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp slt i32 %val, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits, align 1
  %conv = zext i8 %3 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %val)
  %cmp2 = icmp ult i32 %shr, %val
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %info, label %if.end.ad799x_threshold_reg.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
  ]

if.end.ad799x_threshold_reg.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ad799x_threshold_reg.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel.i, align 4
  %mul.i = mul i32 %8, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %mul.i, 4
  br label %ad799x_threshold_reg.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %add3.i = add i32 %mul.i, 5
  br label %ad799x_threshold_reg.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %channel5.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %9 = ptrtoint ptr %channel5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel5.i, align 4
  %mul6.i = mul i32 %10, 3
  %add7.i = add i32 %mul6.i, 6
  br label %ad799x_threshold_reg.exit

ad799x_threshold_reg.exit:                        ; preds = %sw.bb4.i, %if.else.i, %if.then.i, %if.end.ad799x_threshold_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %sw.bb4.i ], [ %add.i, %if.then.i ], [ %add3.i, %if.else.i ], [ -22, %if.end.ad799x_threshold_reg.exit_crit_edge ]
  %conv5 = trunc i32 %retval.0.i to i8
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift, align 1
  %conv7 = zext i8 %12 to i32
  %shl = shl i32 %val, %conv7
  %conv8 = trunc i32 %shl to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv8) #9
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext %conv5, i16 noundef zeroext %13) #9
  tail call void @mutex_unlock(ptr noundef %mlock) #9
  br label %cleanup

cleanup:                                          ; preds = %ad799x_threshold_reg.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %ad799x_threshold_reg.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_read_frequency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call2, 7
  %arrayidx = getelementptr [8 x i32], ptr @ad7998_frequencies, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_write_frequency(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !84
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mlock = getelementptr i8, ptr %dev, i32 936
  call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.error_ret_mutex_crit_edge, label %if.end5

if.end.error_ret_mutex_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret_mutex

if.end5:                                          ; preds = %if.end
  %and = and i32 %call3, 248
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %6, label %if.end5.error_ret_mutex_crit_edge [
    i32 0, label %if.end5.if.end12_crit_edge
    i32 15625, label %if.end12.fold.split
    i32 7812, label %if.end12.fold.split42
    i32 3906, label %if.end12.fold.split43
    i32 976, label %if.end12.fold.split44
    i32 488, label %if.end12.fold.split45
    i32 244, label %if.end12.fold.split46
  ]

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end5.error_ret_mutex_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret_mutex

if.end12.fold.split:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split42:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split43:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split44:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split45:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.fold.split46:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %if.end12.fold.split46, %if.end12.fold.split45, %if.end12.fold.split44, %if.end12.fold.split43, %if.end12.fold.split42, %if.end12.fold.split, %if.end5.if.end12_crit_edge
  %i.040.lcssa = phi i32 [ %6, %if.end5.if.end12_crit_edge ], [ 1, %if.end12.fold.split ], [ 2, %if.end12.fold.split42 ], [ 3, %if.end12.fold.split43 ], [ 5, %if.end12.fold.split44 ], [ 6, %if.end12.fold.split45 ], [ 7, %if.end12.fold.split46 ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %or = or i32 %i.040.lcssa, %and
  %conv = trunc i32 %or to i8
  %call14 = call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 3, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  %spec.select = select i1 %cmp15, i32 %call14, i32 %len
  br label %error_ret_mutex

error_ret_mutex:                                  ; preds = %if.end12, %if.end5.error_ret_mutex_crit_edge, %if.end.error_ret_mutex_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.error_ret_mutex_crit_edge ], [ %spec.select, %if.end12 ], [ -22, %if.end5.error_ret_mutex_crit_edge ]
  call void @mutex_unlock(ptr noundef %mlock) #9
  br label %cleanup

cleanup:                                          ; preds = %error_ret_mutex, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_ret_mutex ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vref = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad799x_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %reg = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vref = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %if.then4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @regulator_enable(ptr noundef nonnull %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end15_crit_edge, label %if.then8

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %call10 = tail call i32 @regulator_disable(ptr noundef %9) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end15:                                         ; preds = %if.then4.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %config = getelementptr inbounds %struct.ad799x_state, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %config, align 4
  %call16 = tail call fastcc i32 @ad799x_update_config(ptr noundef %3, i16 noundef zeroext %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %12 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vref, align 4
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.then18.if.end24_crit_edge, label %if.then21

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then18.if.end24_crit_edge
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %call26 = tail call i32 @regulator_disable(ptr noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end15.cleanup_crit_edge, %if.then8, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call6, %if.then8 ], [ %call16, %if.end24 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_ad799x__288_969_ad799x_driver_init6, !1, !"__initcall__kmod_ad799x__288_969_ad799x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad799x.c", i32 969, i32 1}
!2 = !{ptr @__exitcall_ad799x_driver_exit, !1, !"__exitcall_ad799x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad799x.c", i32 971, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad799x.c", i32 972, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad799x.c", i32 973, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad799x.c", i32 962, i32 11}
!12 = !{ptr @ad799x_driver, !13, !"ad799x_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad799x.c", i32 960, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad799x.c", i32 799, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad799x.c", i32 807, i32 55}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad799x.c", i32 812, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ad799x_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ad799x_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad799x.c", i32 825, i32 4}
!28 = !{ptr @ad799x_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ad799x_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad799x.c", i32 832, i32 4}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ad799x_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ad799x_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ad799x_chip_info_tbl, !36, !"ad799x_chip_info_tbl", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/ad799x.c", i32 599, i32 38}
!37 = !{ptr @ad7991_info, !38, !"ad7991_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/ad799x.c", i32 536, i32 30}
!39 = !{ptr @ad7993_4_7_8_noirq_info, !40, !"ad7993_4_7_8_noirq_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/ad799x.c", i32 541, i32 30}
!41 = !{ptr @ad799x_events, !42, !"ad799x_events", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/ad799x.c", i32 556, i32 36}
!43 = !{ptr @ad7993_4_7_8_irq_info, !44, !"ad7993_4_7_8_irq_info", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/ad799x.c", i32 546, i32 30}
!45 = !{ptr @ad799x_event_attrs_group, !46, !"ad799x_event_attrs_group", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/ad799x.c", i32 532, i32 37}
!47 = !{ptr @ad799x_event_attributes, !48, !"ad799x_event_attributes", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/ad799x.c", i32 526, i32 26}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/ad799x.c", i32 521, i32 8}
!51 = !{ptr @iio_dev_attr_sampling_frequency, !50, !"iio_dev_attr_sampling_frequency", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/ad799x.c", i32 336, i32 22}
!54 = !{ptr @ad7998_frequencies, !55, !"ad7998_frequencies", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/ad799x.c", i32 315, i32 27}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/ad799x.c", i32 524, i32 8}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @iio_const_attr_sampling_frequency_available, !57, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!60 = !{ptr @ad799x_pm_ops, !61, !"ad799x_pm_ops", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/ad799x.c", i32 944, i32 8}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/ad799x.c", i32 919, i32 3}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ad799x_resume._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @ad799x_resume._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/ad799x.c", i32 927, i32 4}
!70 = !{ptr @ad799x_resume._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ad799x_resume._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ad799x_id, !73, !"ad799x_id", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/ad799x.c", i32 946, i32 35}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
!84 = !{!"auto-init"}
