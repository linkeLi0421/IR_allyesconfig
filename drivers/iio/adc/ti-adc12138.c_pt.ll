; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-adc12138.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-adc12138.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adc12138 = type { ptr, i32, ptr, ptr, ptr, %struct.mutex, %struct.completion, i32, [4 x i8], [20 x i16], [40 x i8], [2 x i8], [2 x i8], [124 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ti_adc12138__290_546_adc12138_driver_init6 = internal global ptr @adc12138_driver_init, section ".initcall6.init", align 4
@adc12138_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adc12138_id, ptr @adc12138_probe, ptr @adc12138_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adc12138_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adc12138_driver_exit = internal global ptr @adc12138_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [57 x i8] c"ti_adc12138.author=Akinobu Mita <akinobu.mita@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [58 x i8] c"ti_adc12138.description=ADC12130/ADC12132/ADC12138 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [45 x i8] c"ti_adc12138.file=drivers/iio/adc/ti-adc12138\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [27 x i8] c"ti_adc12138.license=GPL v2\00", section ".modinfo", align 1
@adc12138_id = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adc12130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adc12132\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"adc12138\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adc12138\00", [23 x i8] zeroinitializer }, align 32
@adc12138_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc12130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc12132\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc12138\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@adc12138_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@adc12138_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adc12138_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adc12132_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 2, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@adc12138_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 8, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 9, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 0, i32 10, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 0, i32 11, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 0, i32 12, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 0, i32 13, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 0, i32 14, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 0, i32 15, %struct.anon.84 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [360 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,acquisition-time\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vref-p\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vref-n\00", [25 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__adc12138_start_conv.ch_to_mux = internal unnamed_addr constant [8 x i8] c"\00\04\01\05\02\06\03\07", align 1
@adc12138_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 311, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Auto Cal sequence is still in progress: %#x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adc12138_init\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/adc/ti-adc12138.c\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adc12138_init._entry_ptr = internal global ptr @adc12138_init._entry, section ".printk_index", align 4
@adc12138_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 358, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to start conversion\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adc12138_trigger_handler\00", [39 x i8] zeroinitializer }, align 32
@adc12138_trigger_handler._entry_ptr = internal global ptr @adc12138_trigger_handler._entry, section ".printk_index", align 4
@adc12138_trigger_handler._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.8, i32 364, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wait eoc timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@adc12138_trigger_handler._entry_ptr.15 = internal global ptr @adc12138_trigger_handler._entry.13, section ".printk_index", align 4
@adc12138_trigger_handler._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.8, i32 375, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get conversion data\0A\00", [33 x i8] zeroinitializer }, align 32
@adc12138_trigger_handler._entry_ptr.18 = internal global ptr @adc12138_trigger_handler._entry.16, section ".printk_index", align 4
@switch.table.adc12138_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @adc12132_channels, ptr @adc12132_channels, ptr @adc12138_channels], [20 x i8] zeroinitializer }, align 32
@switch.table.adc12138_probe.19 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5, i32 5, i32 17], [20 x i8] zeroinitializer }, align 32
@switch.table.adc12138_init = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0EN\0E\8E\0E\0E\0E\CE", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"adc12138_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 537, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"adc12138_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 529, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 539, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"adc12138_dt_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 521, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 413, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"adc12138_info\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 283, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"adc12132_channels\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 100, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"adc12138_channels\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 108, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 434, i32 44 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 443, i32 46 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 447, i32 55 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 87, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 309, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 357, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 364, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [33 x i8] c"../drivers/iio/adc/ti-adc12138.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 374, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [28 x i8] c"switch.table.adc12138_probe\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [31 x i8] c"switch.table.adc12138_probe.19\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"switch.table.adc12138_init\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_adc12138_driver_exit, ptr @__initcall__kmod_ti_adc12138__290_546_adc12138_driver_init6, ptr @adc12138_driver_exit, ptr @adc12138_init._entry, ptr @adc12138_init._entry_ptr, ptr @adc12138_trigger_handler._entry, ptr @adc12138_trigger_handler._entry.13, ptr @adc12138_trigger_handler._entry.16, ptr @adc12138_trigger_handler._entry_ptr, ptr @adc12138_trigger_handler._entry_ptr.15, ptr @adc12138_trigger_handler._entry_ptr.18, ptr @adc12138_driver, ptr @adc12138_id, ptr @.str, ptr @adc12138_dt_ids, ptr @adc12138_probe.__key, ptr @.str.1, ptr @adc12138_info, ptr @adc12132_channels, ptr @adc12138_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @switch.table.adc12138_probe, ptr @switch.table.adc12138_probe.19, ptr @switch.table.adc12138_init], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12132_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_trigger_handler._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12138_trigger_handler._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adc12138_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adc12138_probe.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adc12138_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc12138_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adc12138_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adc12138_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adc12138_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc12138_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #6
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
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %id = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id, align 4
  %lock = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @adc12138_probe.__key) #6
  %complete = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #6
  %call4 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %name5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %name5, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @adc12138_info, ptr %info, align 8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call, align 8
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.adc12138_probe, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep158 = getelementptr inbounds [3 x i32], ptr @switch.table.adc12138_probe.19, i32 0, i32 %11
  %14 = ptrtoint ptr %switch.gep158 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load159 = load i32, ptr %switch.gep158, align 4
  %channels8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %15 = ptrtoint ptr %channels8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %switch.load, ptr %channels8, align 8
  %num_channels9 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %16 = ptrtoint ptr %num_channels9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.load159, ptr %num_channels9, align 4
  %acquisition_time = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.2, ptr noundef %acquisition_time, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %switch.lookup.if.end15_crit_edge, label %if.then13

switch.lookup.if.end15_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %acquisition_time to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10, ptr %acquisition_time, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %switch.lookup.if.end15_crit_edge
  %call17 = tail call ptr @devm_clk_get(ptr noundef %spi, ptr noundef null) #6
  %cclk = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %cclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %cclk, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call25 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.3) #6
  %vref_p = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %vref_p to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call25, ptr %vref_p, align 4
  %cmp.i150 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %call33 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.4) #6
  %vref_n = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %vref_n to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call33, ptr %vref_n, align 16
  %cmp.i151 = icmp ule ptr %call33, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %call33 to i32
  %cmp.not = icmp eq ptr %call33, inttoptr (i32 -19 to ptr)
  %or.cond = or i1 %cmp.i151, %cmp.not
  br i1 %or.cond, label %if.end41, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %26 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name5, align 8
  %call.i152 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %25, ptr noundef nonnull @adc12138_eoc_handler, ptr noundef null, i32 noundef 1, ptr noundef %27, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool45.not = icmp eq i32 %call.i152, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %28 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cclk, align 8
  %call.i153 = tail call i32 @clk_prepare(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool.not.i = icmp eq i32 %call.i153, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end47
  %call1.i = tail call i32 @clk_enable(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end52, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %29) #6
  br label %cleanup

if.end52:                                         ; preds = %if.end.i
  %30 = ptrtoint ptr %vref_p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vref_p, align 4
  %call54 = tail call i32 @regulator_enable(ptr noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.err_clk_disable_crit_edge

if.end52.err_clk_disable_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_disable

if.end57:                                         ; preds = %if.end52
  %32 = ptrtoint ptr %vref_n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vref_n, align 16
  %cmp.i154 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.end57.if.end66_crit_edge, label %if.then60

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then60:                                        ; preds = %if.end57
  %call62 = tail call i32 @regulator_enable(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then60.if.end66_crit_edge, label %if.then60.err_vref_p_disable_crit_edge

if.then60.err_vref_p_disable_crit_edge:           ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vref_p_disable

if.then60.if.end66_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end66:                                         ; preds = %if.then60.if.end66_crit_edge, %if.end57.if.end66_crit_edge
  %call67 = tail call fastcc i32 @adc12138_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.err_vref_n_disable_crit_edge

if.end66.err_vref_n_disable_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vref_n_disable

if.end70:                                         ; preds = %if.end66
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call71 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @adc12138_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.err_vref_n_disable_crit_edge

if.end70.err_vref_n_disable_crit_edge:            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vref_n_disable

if.end74:                                         ; preds = %if.end70
  %call75 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end74.cleanup_crit_edge, label %err_buffer_cleanup

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_buffer_cleanup:                               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #6
  br label %err_vref_n_disable

err_vref_n_disable:                               ; preds = %err_buffer_cleanup, %if.end70.err_vref_n_disable_crit_edge, %if.end66.err_vref_n_disable_crit_edge
  %ret.0 = phi i32 [ %call67, %if.end66.err_vref_n_disable_crit_edge ], [ %call71, %if.end70.err_vref_n_disable_crit_edge ], [ %call75, %err_buffer_cleanup ]
  %35 = ptrtoint ptr %vref_n to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vref_n, align 16
  %cmp.i155 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %err_vref_n_disable.err_vref_p_disable_crit_edge, label %if.then81

err_vref_n_disable.err_vref_p_disable_crit_edge:  ; preds = %err_vref_n_disable
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vref_p_disable

if.then81:                                        ; preds = %err_vref_n_disable
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = tail call i32 @regulator_disable(ptr noundef %36) #6
  br label %err_vref_p_disable

err_vref_p_disable:                               ; preds = %if.then81, %err_vref_n_disable.err_vref_p_disable_crit_edge, %if.then60.err_vref_p_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_vref_n_disable.err_vref_p_disable_crit_edge ], [ %ret.0, %if.then81 ], [ %call62, %if.then60.err_vref_p_disable_crit_edge ]
  %37 = ptrtoint ptr %vref_p to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vref_p, align 4
  %call86 = tail call i32 @regulator_disable(ptr noundef %38) #6
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_vref_p_disable, %if.end52.err_clk_disable_crit_edge
  %ret.2 = phi i32 [ %call54, %if.end52.err_clk_disable_crit_edge ], [ %ret.1, %err_vref_p_disable ]
  %39 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cclk, align 8
  tail call void @clk_disable(ptr noundef %40) #6
  tail call void @clk_unprepare(ptr noundef %40) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.end74.cleanup_crit_edge, %if.then3.i, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then28, %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then20 ], [ %21, %if.then28 ], [ %ret.2, %err_clk_disable ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i152, %if.end41.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i153, %if.end47.cleanup_crit_edge ], [ %23, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc12138_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #6
  %vref_n = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vref_n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref_n, align 16
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regulator_disable(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vref_p = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %vref_p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref_p, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %7) #6
  %cclk = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cclk, align 8
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc12138_eoc_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %complete = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %complete) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adc12138_init(ptr noundef %adc) unnamed_addr #2 align 64 {
entry:
  %msg.i.i58 = alloca %struct.spi_message, align 4
  %xfer.i59 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i29 = alloca %struct.spi_message, align 4
  %xfer.i.i30 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.adc12138, ptr %adc, i32 0, i32 6
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %complete, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #6
  %1 = getelementptr inbounds i8, ptr %xfer.i, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 84)
  %tx_buf1.i = getelementptr inbounds %struct.adc12138, ptr %adc, i32 0, i32 11
  %3 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tx_buf1.i, ptr %xfer.i, align 4
  %rx_buf2.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %rx_buf3.i = getelementptr inbounds %struct.adc12138, ptr %adc, i32 0, i32 12
  %4 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_buf3.i, ptr %rx_buf2.i, align 4
  %len5.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %5 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len5.i, align 4
  %id.i = getelementptr inbounds %struct.adc12138, ptr %adc, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  %mode.addr.0.i = select i1 %cmp.not.i, i8 8, i8 32
  %8 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %mode.addr.0.i, ptr %tx_buf1.i, align 128
  %9 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adc, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_sync_transfer.exit.i_crit_edge

entry.spi_sync_transfer.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %entry.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #6
  br i1 %tobool.not.i, label %if.end, label %spi_sync_transfer.exit.i.cleanup_crit_edge

spi_sync_transfer.exit.i.cleanup_crit_edge:       ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %spi_sync_transfer.exit.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #6
  %21 = getelementptr inbounds i8, ptr %xfer.i.i, i32 12
  %22 = call ptr @memset(ptr %21, i32 0, i32 84)
  %23 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx_buf1.i, ptr %xfer.i.i, align 4
  %rx_buf2.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %rx_buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rx_buf3.i, ptr %rx_buf2.i.i, align 4
  %len5.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %len5.i.i, align 4
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.not.i.i = icmp eq i32 %27, 2
  %mode.addr.0.i.i = select i1 %cmp.not.i.i, i8 12, i8 48
  %28 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %mode.addr.0.i.i, ptr %tx_buf1.i, align 128
  %29 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adc, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %31 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 40)
  %33 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.spi_sync_transfer.exit.i.i_crit_edge

if.end.spi_sync_transfer.exit.i.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %if.end.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %30, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %spi_sync_transfer.exit.i.i.cleanup_crit_edge, label %if.end3

spi_sync_transfer.exit.i.i.cleanup_crit_edge:     ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %spi_sync_transfer.exit.i.i
  %call.i = call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 10) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i30) #6
  %41 = getelementptr inbounds i8, ptr %xfer.i.i30, i32 12
  %42 = call ptr @memset(ptr %41, i32 0, i32 84)
  %43 = ptrtoint ptr %xfer.i.i30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %tx_buf1.i, ptr %xfer.i.i30, align 4
  %rx_buf2.i.i32 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i30, i32 0, i32 1
  %44 = ptrtoint ptr %rx_buf2.i.i32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %rx_buf3.i, ptr %rx_buf2.i.i32, align 4
  %len5.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i30, i32 0, i32 2
  %45 = ptrtoint ptr %len5.i.i34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %len5.i.i34, align 4
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.not.i.i36 = icmp eq i32 %47, 2
  %mode.addr.0.i.i37 = select i1 %cmp.not.i.i36, i8 12, i8 48
  %48 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %mode.addr.0.i.i37, ptr %tx_buf1.i, align 128
  %49 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adc, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i29) #6
  %51 = getelementptr inbounds i8, ptr %msg.i.i.i29, i32 8
  %52 = call ptr @memset(ptr %51, i32 0, i32 40)
  %53 = ptrtoint ptr %msg.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %msg.i.i.i29, ptr %msg.i.i.i29, align 4
  %prev.i.i.i.i.i.i.i38 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i29, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i.i29, ptr %prev.i.i.i.i.i.i.i38, align 4
  %resources.i.i.i.i.i.i39 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i29, i32 0, i32 10
  %55 = ptrtoint ptr %resources.i.i.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %resources.i.i.i.i.i.i39, ptr %resources.i.i.i.i.i.i39, align 4
  %prev.i2.i.i.i.i.i.i40 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i29, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %prev.i2.i.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %resources.i.i.i.i.i.i39, ptr %prev.i2.i.i.i.i.i.i40, align 4
  %transfer_list.i.i.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i30, i32 0, i32 18
  %call.i.i.i.i.i.i.i42 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i41, ptr noundef nonnull %msg.i.i.i29, ptr noundef nonnull %msg.i.i.i29) #6
  br i1 %call.i.i.i.i.i.i.i42, label %if.end.i.i.i.i.i.i.i44, label %if.end3.spi_sync_transfer.exit.i.i47_crit_edge

if.end3.spi_sync_transfer.exit.i.i47_crit_edge:   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i.i47

if.end.i.i.i.i.i.i.i44:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %prev.i.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %transfer_list.i.i.i.i.i41, ptr %prev.i.i.i.i.i.i.i38, align 4
  %58 = ptrtoint ptr %transfer_list.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i.i.i29, ptr %transfer_list.i.i.i.i.i41, align 4
  %prev3.i.i.i.i.i.i.i43 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i30, i32 0, i32 18, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i.i29, ptr %prev3.i.i.i.i.i.i.i43, align 4
  %60 = ptrtoint ptr %msg.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %transfer_list.i.i.i.i.i41, ptr %msg.i.i.i29, align 4
  br label %spi_sync_transfer.exit.i.i47

spi_sync_transfer.exit.i.i47:                     ; preds = %if.end.i.i.i.i.i.i.i44, %if.end3.spi_sync_transfer.exit.i.i47_crit_edge
  %call.i.i.i45 = call i32 @spi_sync(ptr noundef %50, ptr noundef nonnull %msg.i.i.i29) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %call.i.i.i45, 0
  br i1 %tobool.not.i.i46, label %if.end.i55, label %adc12138_mode_programming.exit.i48

adc12138_mode_programming.exit.i48:               ; preds = %spi_sync_transfer.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i30) #6
  br label %adc12138_read_status.exit57

if.end.i55:                                       ; preds = %spi_sync_transfer.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %rx_buf3.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %rx_buf.sroa.0.0.copyload.i49 = load i8, ptr %rx_buf3.i, align 2
  %rx_buf.sroa.5.0.rx_buf3.i.sroa_idx.i50 = getelementptr inbounds %struct.adc12138, ptr %adc, i32 0, i32 12, i32 1
  %62 = ptrtoint ptr %rx_buf.sroa.5.0.rx_buf3.i.sroa_idx.i50 to i32
  call void @__asan_load1_noabort(i32 %62)
  %rx_buf.sroa.5.0.copyload.i51 = load i8, ptr %rx_buf.sroa.5.0.rx_buf3.i.sroa_idx.i50, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i30) #6
  %conv.i52 = zext i8 %rx_buf.sroa.0.0.copyload.i49 to i32
  %shl.i53 = shl nuw nsw i32 %conv.i52, 1
  %63 = lshr i8 %rx_buf.sroa.5.0.copyload.i51, 7
  %64 = zext i8 %63 to i32
  %or.i54 = or i32 %shl.i53, %64
  br label %adc12138_read_status.exit57

adc12138_read_status.exit57:                      ; preds = %if.end.i55, %adc12138_mode_programming.exit.i48
  %retval.0.i56 = phi i32 [ %or.i54, %if.end.i55 ], [ %call.i.i.i45, %adc12138_mode_programming.exit.i48 ]
  %and = and i32 %retval.0.i56, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %adc12138_read_status.exit57
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adc, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i56) #9
  br label %cleanup

if.end9:                                          ; preds = %adc12138_read_status.exit57
  %acquisition_time = getelementptr inbounds %struct.adc12138, ptr %adc, i32 0, i32 7
  %67 = ptrtoint ptr %acquisition_time to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %acquisition_time, align 8
  %69 = add i32 %68, -6
  %70 = call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %70)
  %71 = icmp ult i32 %70, 8
  br i1 %71, label %switch.hole_check, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end9
  %switch.maskindex = trunc i32 %70 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %72 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %switch.lobit.not = icmp eq i8 %72, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.adc12138_init, i32 0, i32 %70
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %73)
  %switch.load = load i8, ptr %switch.gep, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i59) #6
  %74 = getelementptr inbounds i8, ptr %xfer.i59, i32 12
  %75 = call ptr @memset(ptr %74, i32 0, i32 84)
  %76 = ptrtoint ptr %xfer.i59 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %tx_buf1.i, ptr %xfer.i59, align 4
  %rx_buf2.i61 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i59, i32 0, i32 1
  %77 = ptrtoint ptr %rx_buf2.i61 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %rx_buf3.i, ptr %rx_buf2.i61, align 4
  %len5.i63 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i59, i32 0, i32 2
  %78 = ptrtoint ptr %len5.i63 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %len5.i63, align 4
  %79 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp.not.i65 = icmp eq i32 %80, 2
  %and.i = and i8 %switch.load, -64
  %or.i66 = or i8 %and.i, 56
  %mode.addr.0.i67 = select i1 %cmp.not.i65, i8 %switch.load, i8 %or.i66
  %81 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %mode.addr.0.i67, ptr %tx_buf1.i, align 128
  %82 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adc, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i58) #6
  %84 = getelementptr inbounds i8, ptr %msg.i.i58, i32 8
  %85 = call ptr @memset(ptr %84, i32 0, i32 40)
  %86 = ptrtoint ptr %msg.i.i58 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %msg.i.i58, ptr %msg.i.i58, align 4
  %prev.i.i.i.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %msg.i.i58, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %msg.i.i58, ptr %prev.i.i.i.i.i.i68, align 4
  %resources.i.i.i.i.i69 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i58, i32 0, i32 10
  %88 = ptrtoint ptr %resources.i.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %resources.i.i.i.i.i69, ptr %resources.i.i.i.i.i69, align 4
  %prev.i2.i.i.i.i.i70 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i58, i32 0, i32 10, i32 1
  %89 = ptrtoint ptr %prev.i2.i.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %resources.i.i.i.i.i69, ptr %prev.i2.i.i.i.i.i70, align 4
  %transfer_list.i.i.i.i71 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i59, i32 0, i32 18
  %call.i.i.i.i.i.i72 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i71, ptr noundef nonnull %msg.i.i58, ptr noundef nonnull %msg.i.i58) #6
  br i1 %call.i.i.i.i.i.i72, label %if.end.i.i.i.i.i.i74, label %switch.lookup.spi_sync_transfer.exit.i77_crit_edge

switch.lookup.spi_sync_transfer.exit.i77_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i77

if.end.i.i.i.i.i.i74:                             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %prev.i.i.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %transfer_list.i.i.i.i71, ptr %prev.i.i.i.i.i.i68, align 4
  %91 = ptrtoint ptr %transfer_list.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %msg.i.i58, ptr %transfer_list.i.i.i.i71, align 4
  %prev3.i.i.i.i.i.i73 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i59, i32 0, i32 18, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %msg.i.i58, ptr %prev3.i.i.i.i.i.i73, align 4
  %93 = ptrtoint ptr %msg.i.i58 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %transfer_list.i.i.i.i71, ptr %msg.i.i58, align 4
  br label %spi_sync_transfer.exit.i77

spi_sync_transfer.exit.i77:                       ; preds = %if.end.i.i.i.i.i.i74, %switch.lookup.spi_sync_transfer.exit.i77_crit_edge
  %call.i.i75 = call i32 @spi_sync(ptr noundef %83, ptr noundef nonnull %msg.i.i58) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i58) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i59) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_sync_transfer.exit.i77, %switch.hole_check.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %spi_sync_transfer.exit.i.i.cleanup_crit_edge, %spi_sync_transfer.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call.i.i75, %spi_sync_transfer.exit.i77 ], [ %call.i.i, %spi_sync_transfer.exit.i.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call.i.i.i, %spi_sync_transfer.exit.i.i.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc12138_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i.i = alloca %struct.spi_transfer, align 4
  %trash = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %trash)
  %4 = ptrtoint ptr %trash to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %trash, align 2
  %lock = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %6, i32 noundef %8, i32 noundef 0) #6
  %9 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %10)
  %cmp80 = icmp ult i32 %call2, %10
  br i1 %cmp80, label %for.body.lr.ph, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %complete = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 6
  %11 = getelementptr inbounds i8, ptr %xfer.i.i.i, i32 12
  %tx_buf1.i.i.i = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 11
  %rx_buf2.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 1
  %rx_buf3.i.i.i = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 12
  %len5.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 2
  %id.i.i.i = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %scan_index.081 = phi i32 [ %call2, %for.body.lr.ph ], [ %call19, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels, align 8
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.082)
  %tobool.not = icmp eq i32 %i.082, 0
  %sub = add i32 %i.082, -1
  %arrayidx4 = getelementptr %struct.adc12138, ptr %3, i32 0, i32 9, i32 %sub
  %cond = select i1 %tobool.not, ptr %trash, ptr %arrayidx4
  %channel1.i.i = getelementptr %struct.iio_chan_spec, ptr %14, i32 %scan_index.081, i32 1
  %16 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel1.i.i, align 4
  %arrayidx.i.i = getelementptr [8 x i8], ptr @__adc12138_start_conv.ch_to_mux, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i8 %19, 4
  %differential.i.i = getelementptr %struct.iio_chan_spec, ptr %14, i32 %scan_index.081, i32 19
  %20 = ptrtoint ptr %differential.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %differential.i.i, align 4
  %21 = shl i8 %bf.load.i.i, 3
  %22 = and i8 %21, -128
  %23 = xor i8 %22, -128
  %or.i.i = or i8 %23, %shl.i.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i.i) #6
  %24 = call ptr @memset(ptr %11, i32 0, i32 84)
  %25 = ptrtoint ptr %xfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx_buf1.i.i.i, ptr %xfer.i.i.i, align 4
  %26 = ptrtoint ptr %rx_buf2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rx_buf3.i.i.i, ptr %rx_buf2.i.i.i, align 4
  %27 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len5.i.i.i, align 4
  %28 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.not.i.i.i = icmp eq i32 %29, 2
  %and.i.i.i = and i8 %or.i.i, -64
  %mode.addr.0.i.i.i = select i1 %cmp.not.i.i.i, i8 %or.i.i, i8 %and.i.i.i
  %30 = ptrtoint ptr %tx_buf1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %mode.addr.0.i.i.i, ptr %tx_buf1.i.i.i, align 128
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  %33 = call ptr @memset(ptr %12, i32 0, i32 40)
  %34 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %for.body.spi_sync_transfer.exit.i.i.i_crit_edge

for.body.spi_sync_transfer.exit.i.i.i_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i.i

spi_sync_transfer.exit.i.i.i:                     ; preds = %if.end.i.i.i.i.i.i.i.i, %for.body.spi_sync_transfer.exit.i.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end, label %do.end

do.end:                                           ; preds = %spi_sync_transfer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i.i) #6
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.11) #9
  br label %cleanup39

if.end:                                           ; preds = %spi_sync_transfer.exit.i.i.i
  %44 = ptrtoint ptr %rx_buf3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rx_buf3.i.i.i, align 2
  %46 = ptrtoint ptr %cond to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %cond, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i.i) #6
  %call.i = call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %do.end13, label %for.inc

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.14) #9
  br label %cleanup39

for.inc:                                          ; preds = %if.end
  %inc = add i32 %i.082, 1
  %49 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %active_scan_mask, align 4
  %51 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %scan_index.081, 1
  %call19 = call i32 @_find_next_bit_be(ptr noundef %50, i32 noundef %52, i32 noundef %add) #6
  %53 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call19, %54
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool20.not = icmp eq i32 %inc, 0
  br i1 %tobool20.not, label %for.end.if.end34_crit_edge, label %if.then21

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then21:                                        ; preds = %for.end
  %arrayidx24 = getelementptr %struct.adc12138, ptr %3, i32 0, i32 9, i32 %i.082
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #6
  %55 = getelementptr inbounds i8, ptr %xfer.i.i, i32 12
  %56 = call ptr @memset(ptr %55, i32 0, i32 84)
  %tx_buf1.i.i = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 11
  %57 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tx_buf1.i.i, ptr %xfer.i.i, align 4
  %rx_buf2.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 1
  %rx_buf3.i.i = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 12
  %58 = ptrtoint ptr %rx_buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %rx_buf3.i.i, ptr %rx_buf2.i.i, align 4
  %len5.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %len5.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 1
  %60 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.not.i.i = icmp eq i32 %61, 2
  %mode.addr.0.i.i = select i1 %cmp.not.i.i, i8 12, i8 48
  %62 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %mode.addr.0.i.i, ptr %tx_buf1.i.i, align 128
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %65 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %69 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %70 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then21.spi_sync_transfer.exit.i.i_crit_edge

if.then21.spi_sync_transfer.exit.i.i_crit_edge:   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %72 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %74 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %if.then21.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %64, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %adc12138_read_conv_data.exit.thread, label %do.end30

adc12138_read_conv_data.exit.thread:              ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %rx_buf3.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %rx_buf3.i.i, align 2
  %77 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %arrayidx24, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #6
  br label %if.end34

do.end30:                                         ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #6
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.17) #9
  br label %cleanup39

if.end34:                                         ; preds = %adc12138_read_conv_data.exit.thread, %for.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %data35 = getelementptr inbounds %struct.adc12138, ptr %3, i32 0, i32 9
  %call36 = call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %80 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %scan_timestamp.i, align 8, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i74 = icmp eq i8 %81, 0
  br i1 %tobool.not.i74, label %if.end34.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end34.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %83, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data35, i32 %sub.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %call36, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end34.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i75 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data35) #6
  br label %cleanup39

cleanup39:                                        ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end30, %do.end13, %do.end
  call void @mutex_unlock(ptr noundef %lock) #6
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %85 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %86) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %trash)
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc12138_read_raw(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %channel, ptr nocapture noundef %value, ptr nocapture noundef writeonly %shift, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %complete.i = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %complete.i, align 4
  %channel1.i.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %4 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel1.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [8 x i8], ptr @__adc12138_start_conv.ch_to_mux, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i.i, align 1
  %shl.i.i.i = shl i8 %7, 4
  %differential.i.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 19
  %8 = ptrtoint ptr %differential.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i.i = load i8, ptr %differential.i.i.i, align 4
  %9 = shl i8 %bf.load.i.i.i, 3
  %10 = and i8 %9, -128
  %11 = xor i8 %10, -128
  %or.i.i.i = or i8 %11, %shl.i.i.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i.i.i) #6
  %12 = getelementptr inbounds i8, ptr %xfer.i.i.i.i, i32 12
  %13 = call ptr @memset(ptr %12, i32 0, i32 84)
  %tx_buf1.i.i.i.i = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %xfer.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tx_buf1.i.i.i.i, ptr %xfer.i.i.i.i, align 4
  %rx_buf2.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i.i, i32 0, i32 1
  %rx_buf3.i.i.i.i = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %rx_buf2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rx_buf3.i.i.i.i, ptr %rx_buf2.i.i.i.i, align 4
  %len5.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %len5.i.i.i.i, align 4
  %id.i.i.i.i = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i.i.i.i = icmp eq i32 %18, 2
  %and.i.i.i.i = and i8 %or.i.i.i, -64
  %mode.addr.0.i.i.i.i = select i1 %cmp.not.i.i.i.i, i8 %or.i.i.i, i8 %and.i.i.i.i
  %19 = ptrtoint ptr %tx_buf1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %mode.addr.0.i.i.i.i, ptr %tx_buf1.i.i.i.i, align 128
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #6
  %22 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 40)
  %24 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %sw.bb.adc12138_start_conv.exit.i_crit_edge

sw.bb.adc12138_start_conv.exit.i_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc12138_start_conv.exit.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i.i, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %adc12138_start_conv.exit.i

adc12138_start_conv.exit.i:                       ; preds = %if.end.i.i.i.i.i.i.i.i.i, %sw.bb.adc12138_start_conv.exit.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %adc12138_start_conv.exit.i.adc12138_adc_conversion.exit.thread_crit_edge

adc12138_start_conv.exit.i.adc12138_adc_conversion.exit.thread_crit_edge: ; preds = %adc12138_start_conv.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc12138_adc_conversion.exit.thread

if.end.i:                                         ; preds = %adc12138_start_conv.exit.i
  %call.i.i = call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.i.adc12138_adc_conversion.exit.thread_crit_edge, label %if.end5.i

if.end.i.adc12138_adc_conversion.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc12138_adc_conversion.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i.i) #6
  %32 = getelementptr inbounds i8, ptr %xfer.i.i.i, i32 12
  %33 = call ptr @memset(ptr %32, i32 0, i32 84)
  %34 = ptrtoint ptr %xfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tx_buf1.i.i.i.i, ptr %xfer.i.i.i, align 4
  %rx_buf2.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %rx_buf2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rx_buf3.i.i.i.i, ptr %rx_buf2.i.i.i, align 4
  %len5.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %len5.i.i.i, align 4
  %37 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp.not.i.i.i = icmp eq i32 %38, 2
  %mode.addr.0.i.i.i = select i1 %cmp.not.i.i.i, i8 12, i8 48
  %39 = ptrtoint ptr %tx_buf1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %mode.addr.0.i.i.i, ptr %tx_buf1.i.i.i.i, align 128
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  %42 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %43 = call ptr @memset(ptr %42, i32 0, i32 40)
  %44 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %46 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end5.i.spi_sync_transfer.exit.i.i.i_crit_edge

if.end5.i.spi_sync_transfer.exit.i.i.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i.i

spi_sync_transfer.exit.i.i.i:                     ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end5.i.spi_sync_transfer.exit.i.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end, label %adc12138_adc_conversion.exit

adc12138_adc_conversion.exit.thread:              ; preds = %if.end.i.adc12138_adc_conversion.exit.thread_crit_edge, %adc12138_start_conv.exit.i.adc12138_adc_conversion.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %if.end.i.adc12138_adc_conversion.exit.thread_crit_edge ], [ %call.i.i.i.i.i, %adc12138_start_conv.exit.i.adc12138_adc_conversion.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

adc12138_adc_conversion.exit:                     ; preds = %spi_sync_transfer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %spi_sync_transfer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %rx_buf3.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rx_buf3.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  %conv = zext i16 %53 to i32
  %shift3 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 5, i32 3
  %54 = ptrtoint ptr %shift3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %shift3, align 1
  %conv4 = zext i8 %55 to i32
  %shr = lshr i32 %conv, %conv4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %realbits, align 1
  %58 = sub i8 32, %57
  %conv1.i = zext i8 %58 to i32
  %shl.i = shl i32 %shr, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %59 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shr.i, ptr %value, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %vref_p = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %vref_p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vref_p, align 4
  %call9 = tail call i32 @regulator_get_voltage(ptr noundef %61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %sw.bb8.cleanup_crit_edge, label %if.end12

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  %62 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call9, ptr %value, align 4
  %vref_n = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 4
  %63 = ptrtoint ptr %vref_n to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vref_n, align 16
  %cmp.i = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end12.if.end22_crit_edge, label %if.then14

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then14:                                        ; preds = %if.end12
  %call16 = tail call i32 @regulator_get_voltage(ptr noundef %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then14.cleanup_crit_edge, label %if.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %value, align 4
  %sub21 = sub i32 %66, %call16
  store i32 %sub21, ptr %value, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end12.if.end22_crit_edge
  %67 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value, align 4
  %div = sdiv i32 %68, 1000
  store i32 %div, ptr %value, align 4
  %realbits24 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %realbits24 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %realbits24, align 1
  %conv25 = zext i8 %70 to i32
  %sub26 = add nsw i32 %conv25, -1
  %71 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub26, ptr %shift, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %vref_n28 = getelementptr inbounds %struct.adc12138, ptr %1, i32 0, i32 4
  %72 = ptrtoint ptr %vref_n28 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vref_n28, align 16
  %cmp.i66 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.else, label %if.then30

if.then30:                                        ; preds = %sw.bb27
  %call32 = tail call i32 @regulator_get_voltage(ptr noundef %73) #6
  %74 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then30.cleanup_crit_edge, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %value, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then30.if.end37_crit_edge
  %76 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %value, align 4
  %div38 = sdiv i32 %77, 1000
  store i32 %div38, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then30.cleanup_crit_edge, %if.end22, %if.then14.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end, %adc12138_adc_conversion.exit, %adc12138_adc_conversion.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end37 ], [ 11, %if.end22 ], [ 1, %if.end ], [ %call.i.i.i.i, %adc12138_adc_conversion.exit ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ %call16, %if.then14.cleanup_crit_edge ], [ %call32, %if.then30.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %adc12138_adc_conversion.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_ti_adc12138__290_546_adc12138_driver_init6, !1, !"__initcall__kmod_ti_adc12138__290_546_adc12138_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 546, i32 1}
!2 = !{ptr @__exitcall_adc12138_driver_exit, !1, !"__exitcall_adc12138_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 548, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 549, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 550, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 539, i32 11}
!12 = !{ptr @adc12138_driver, !13, !"adc12138_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 537, i32 26}
!14 = !{ptr @adc12138_id, !15, !"adc12138_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 529, i32 35}
!16 = !{ptr @adc12138_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 413, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 434, i32 44}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 443, i32 46}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 447, i32 55}
!25 = !{ptr @init_completion.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/completion.h", i32 87, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @adc12138_info, !29, !"adc12138_info", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 283, i32 30}
!30 = !{ptr @__adc12138_start_conv.ch_to_mux, !31, !"ch_to_mux", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 171, i32 18}
!32 = !{ptr @adc12132_channels, !33, !"adc12132_channels", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 100, i32 35}
!34 = !{ptr @adc12138_channels, !35, !"adc12138_channels", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 108, i32 35}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 309, i32 3}
!38 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @adc12138_init._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @adc12138_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 357, i32 4}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @adc12138_trigger_handler._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @adc12138_trigger_handler._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 364, i32 4}
!51 = !{ptr @adc12138_trigger_handler._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @adc12138_trigger_handler._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 374, i32 4}
!55 = !{ptr @adc12138_trigger_handler._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @adc12138_trigger_handler._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @adc12138_dt_ids, !58, !"adc12138_dt_ids", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/ti-adc12138.c", i32 521, i32 34}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i8 0, i8 2}
