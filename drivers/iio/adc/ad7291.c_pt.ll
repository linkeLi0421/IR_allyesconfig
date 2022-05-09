; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7291.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7291.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ad7291_chip_info = type { ptr, ptr, i16, i16, %struct.mutex }

@__initcall__kmod_ad7291__288_559_ad7291_driver_init6 = internal global ptr @ad7291_driver_init, section ".initcall6.init", align 4
@ad7291_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad7291_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7291_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad7291_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad7291_driver_exit = internal global ptr @ad7291_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"ad7291.author=Sonic Zhang <sonic.zhang@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [52 x i8] c"ad7291.description=Analog Devices AD7291 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"ad7291.file=drivers/iio/adc/ad7291\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"ad7291.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7291\00", [25 x i8] zeroinitializer }, align 32
@ad7291_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7291\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ad7291_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad7291\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ad7291_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->state_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad7291_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 517, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad7291_events, i32 3, ptr null, ptr null, ptr null, i8 64 }], [200 x i8] zeroinitializer }, align 32
@ad7291_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7291_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7291_read_event_config, ptr @ad7291_write_event_config, ptr @ad7291_read_event_value, ptr @ad7291_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7291_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 4, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@ad7291_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 94, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C read error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad7291_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad7291.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7291_i2c_read._entry_ptr = internal global ptr @ad7291_i2c_read._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 9]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"ad7291_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 551, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 553, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"ad7291_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 545, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"ad7291_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 538, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 480, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 488, i32 56 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"ad7291_channels\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 434, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"ad7291_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 455, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"ad7291_events\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 405, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [28 x i8] c"../drivers/iio/adc/ad7291.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 94, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ad7291_driver_exit, ptr @__initcall__kmod_ad7291__288_559_ad7291_driver_init6, ptr @ad7291_driver_exit, ptr @ad7291_i2c_read._entry, ptr @ad7291_i2c_read._entry_ptr, ptr @ad7291_driver, ptr @.str, ptr @ad7291_of_match, ptr @ad7291_id, ptr @ad7291_probe.__key, ptr @.str.1, ptr @.str.2, ptr @ad7291_channels, ptr @ad7291_info, ptr @ad7291_events, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7291_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7291_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7291_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7291_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7291_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7291_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7291_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7291_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7291_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad7291_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7291_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ad7291_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7291_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 104) #6
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
  %state_lock = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %state_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad7291_probe.__key) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  %command = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 168, ptr %command, align 4
  %call4 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %reg = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call4 to i32
  %cmp.not = icmp eq ptr %call4, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.end15.thread, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.thread:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %reg, align 4
  br label %if.end32

if.end15:                                         ; preds = %if.end
  %tobool17.not = icmp eq ptr %call4, null
  br i1 %tobool17.not, label %if.end15.if.end32_crit_edge, label %if.then18

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then18:                                        ; preds = %if.end15
  %call20 = tail call i32 @regulator_enable(ptr noundef nonnull %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.then18
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ad7291_reg_disable, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end29, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %8) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %command, align 4
  %11 = or i16 %10, 16
  store i16 %11, ptr %command, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end15.if.end32_crit_edge, %if.end15.thread
  %name33 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %12 = ptrtoint ptr %name33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %id, ptr %name33, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ad7291_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ad7291_info, ptr %info, align 8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i.i97 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %18, i8 noundef zeroext 0, i16 noundef zeroext 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %tobool35.not = icmp eq i32 %call.i.i97, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %command, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  %call.i.i98 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %22, i8 noundef zeroext 0, i16 noundef zeroext %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool40.not = icmp eq i32 %call.i.i98, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp43 = icmp sgt i32 %25, 0
  br i1 %cmp43, label %if.then45, label %if.end42.if.end54_crit_edge

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then45:                                        ; preds = %if.end42
  %call50 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %25, ptr noundef null, ptr noundef nonnull @ad7291_event_handler, i32 noundef 8200, ptr noundef %id, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then45.if.end54_crit_edge, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end54:                                         ; preds = %if.then45.if.end54_crit_edge, %if.end42.if.end54_crit_edge
  %call56 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then45.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then18.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call56, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.then18.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ -5, %if.end32.cleanup_crit_edge ], [ -5, %if.end37.cleanup_crit_edge ], [ %call50, %if.then45.cleanup_crit_edge ], [ %5, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7291_reg_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7291_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %conv.i.i = trunc i32 %call.i.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i87 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext 31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %cmp.i.i88 = icmp slt i32 %call.i.i87, 0
  br i1 %cmp.i.i88, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %conv.i.i91 = trunc i32 %call.i.i87 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i91) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i)
  %tobool7.not = icmp eq i16 %conv.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i91)
  %tobool9.not = icmp eq i16 %conv.i.i91, 0
  %or.cond110 = select i1 %tobool7.not, i1 %tobool9.not, i1 false
  br i1 %or.cond110, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %command12 = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %command12 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %command12, align 4
  %10 = or i16 %9, 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  %call.i.i95 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %12, i8 noundef zeroext 0, i16 noundef zeroext %13) #6
  %14 = ptrtoint ptr %command12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %command12, align 4
  %16 = and i16 %15, -5
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %16) #6
  %call.i.i96 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %18, i8 noundef zeroext 0, i16 noundef zeroext %19) #6
  %conv20 = zext i16 %4 to i32
  %20 = and i32 %conv20, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.end11.if.end29_crit_edge, label %if.then27

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then27:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 562988608126976, i64 noundef %call1) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end11.if.end29_crit_edge
  %22 = and i32 %conv20, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.end29.if.end39_crit_edge, label %if.then37

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 281513631416320, i64 noundef %call1) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end29.if.end39_crit_edge
  %conv41 = zext i16 %7 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end39
  %i.0111 = phi i32 [ 0, %if.end39 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw i32 %i.0111, 1
  %shl = shl nuw i32 1, %mul
  %and42 = and i32 %shl, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %for.body.if.end49_crit_edge, label %if.then44

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv46 = zext i32 %i.0111 to i64
  %or47 = or i64 %conv46, 562949953421312
  %call48 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef %or47, i64 noundef %call1) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %for.body.if.end49_crit_edge
  %add = or i32 %mul, 1
  %shl52 = shl nuw i32 1, %add
  %and53 = and i32 %shl52, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end49.for.inc_crit_edge, label %if.then55

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %conv57 = zext i32 %i.0111 to i64
  %or58 = or i64 %conv57, 281474976710656
  %call59 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef %or58, i64 noundef %call1) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %if.end49.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %3, %entry.cleanup.sink.split_crit_edge ], [ %6, %if.end.cleanup.sink.split_crit_edge ]
  %dev.i89 = getelementptr inbounds %struct.i2c_client, ptr %.sink, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i89, ptr noundef nonnull @.str.3) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7291_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup53_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb30
    i32 2, label %sw.bb38
  ]

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %4, label %sw.bb.cleanup53_crit_edge [
    i32 0, label %sw.bb1
    i32 9, label %sw.bb22
  ]

sw.bb.cleanup53_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

sw.bb1:                                           ; preds = %sw.bb
  %state_lock = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #6
  %command = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %command, align 4
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %state_lock) #6
  br label %cleanup53

if.end:                                           ; preds = %sw.bb1
  %and5 = and i16 %7, 255
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel, align 4
  %sub = sub i32 15, %10
  %shl = shl nuw i32 1, %sub
  %11 = trunc i32 %shl to i16
  %conv8 = or i16 %and5, %11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv8) #6
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext 0, i16 noundef zeroext %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %state_lock) #6
  br label %cleanup53

if.end13:                                         ; preds = %if.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %16, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %state_lock) #6
  br label %cleanup53

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %call.i to i16
  %17 = and i16 %conv.i, -241
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %and20 = zext i16 %18 to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and20, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %state_lock) #6
  br label %cleanup53

sw.bb22:                                          ; preds = %sw.bb
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i90 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %21, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %sw.bb22.cleanup53_crit_edge, label %if.end28

sw.bb22.cleanup53_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.end28:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i92 = trunc i32 %call.i90 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv.i92) #6
  %conv1.i93 = zext i16 %22 to i32
  %shl.i = shl i32 %conv1.i93, 20
  %shr.i = ashr exact i32 %shl.i, 20
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup53

sw.bb30:                                          ; preds = %entry
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i95 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %25, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp.i96 = icmp slt i32 %call.i95, 0
  br i1 %cmp.i96, label %sw.bb30.cleanup53_crit_edge, label %if.end36

sw.bb30.cleanup53_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.end36:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i97 = trunc i32 %call.i95 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv.i97) #6
  %conv1.i98 = zext i16 %26 to i32
  %shl.i88 = shl i32 %conv1.i98, 20
  %shr.i89 = ashr exact i32 %shl.i88, 20
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr.i89, ptr %val, align 4
  br label %cleanup53

sw.bb38:                                          ; preds = %entry
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %29, label %sw.bb38.cleanup53_crit_edge [
    i32 0, label %sw.bb40
    i32 9, label %sw.bb50
  ]

sw.bb38.cleanup53_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

sw.bb40:                                          ; preds = %sw.bb38
  %reg = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg, align 4
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %sw.bb40.if.end49_crit_edge, label %if.then42

sw.bb40.if.end49_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then42:                                        ; preds = %sw.bb40
  %call44 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then42.cleanup53_crit_edge, label %if.end48

if.then42.cleanup53_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.end48:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %div100 = udiv i32 %call44, 1000
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %sw.bb40.if.end49_crit_edge
  %storemerge = phi i32 [ %div100, %if.end48 ], [ 2500, %sw.bb40.if.end49_crit_edge ]
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %val, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12, ptr %val2, align 4
  br label %cleanup53

sw.bb50:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 250, ptr %val, align 4
  br label %cleanup53

cleanup53:                                        ; preds = %sw.bb50, %if.end49, %if.then42.cleanup53_crit_edge, %sw.bb38.cleanup53_crit_edge, %if.end36, %sw.bb30.cleanup53_crit_edge, %if.end28, %sw.bb22.cleanup53_crit_edge, %if.end19, %if.then17, %if.then11, %if.then, %sw.bb.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.1 = phi i32 [ 1, %sw.bb50 ], [ 11, %if.end49 ], [ 1, %if.end36 ], [ 1, %if.end28 ], [ -16, %if.then ], [ %call.i.i, %if.then11 ], [ %call.i, %if.then17 ], [ 1, %if.end19 ], [ %call.i90, %sw.bb22.cleanup53_crit_edge ], [ -22, %sw.bb.cleanup53_crit_edge ], [ %call.i95, %sw.bb30.cleanup53_crit_edge ], [ -22, %sw.bb38.cleanup53_crit_edge ], [ -22, %entry.cleanup53_crit_edge ], [ %call44, %if.then42.cleanup53_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7291_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 9, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %c_mask = getelementptr inbounds %struct.ad7291_chip_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %c_mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %c_mask, align 2
  %conv = zext i16 %6 to i32
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %sub = sub i32 15, %8
  %9 = lshr i32 %conv, %sub
  %10 = and i32 %9, 1
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %10, %sw.bb ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7291_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %state_lock = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #6
  %command = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %command, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %sub = sub i32 15, %5
  %shl = shl nuw i32 1, %sub
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cond = icmp eq i32 %7, 0
  br i1 %cond, label %sw.bb, label %entry.error_ret_crit_edge

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_ret

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %c_mask = getelementptr inbounds %struct.ad7291_chip_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %c_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %c_mask, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true8.critedge

land.lhs.true:                                    ; preds = %sw.bb
  br i1 %tobool2.not, label %land.lhs.true.error_ret_crit_edge, label %if.then

land.lhs.true.error_ret_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_ret

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %10 = trunc i32 %shl to i16
  %11 = xor i16 %10, -1
  %conv6 = and i16 %9, %11
  br label %if.end18

land.lhs.true8.critedge:                          ; preds = %sw.bb
  br i1 %tobool2.not, label %if.then13, label %land.lhs.true8.critedge.error_ret_crit_edge

land.lhs.true8.critedge.error_ret_crit_edge:      ; preds = %land.lhs.true8.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_ret

if.then13:                                        ; preds = %land.lhs.true8.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %12 = trunc i32 %shl to i16
  %conv16 = or i16 %9, %12
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then
  %conv16.sink = phi i16 [ %conv16, %if.then13 ], [ %conv6, %if.then ]
  %13 = ptrtoint ptr %c_mask to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv16.sink, ptr %c_mask, align 2
  %14 = and i16 %3, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16.sink)
  %tobool28.not = icmp eq i16 %conv16.sink, 0
  %or2560 = or i16 %3, %conv16.sink
  %15 = or i16 %or2560, 1
  %spec.select = select i1 %tobool28.not, i16 %14, i16 %15
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #6
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %17, i8 noundef zeroext 0, i16 noundef zeroext %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end18.error_ret_crit_edge, label %if.end37

if.end18.error_ret_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_ret

if.end37:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %spec.select, ptr %command, align 4
  br label %error_ret

error_ret:                                        ; preds = %if.end37, %if.end18.error_ret_crit_edge, %land.lhs.true8.critedge.error_ret_crit_edge, %land.lhs.true.error_ret_crit_edge, %entry.error_ret_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true8.critedge.error_ret_crit_edge ], [ %call.i.i, %if.end18.error_ret_crit_edge ], [ %call.i.i, %if.end37 ], [ -22, %entry.error_ret_crit_edge ], [ 0, %land.lhs.true.error_ret_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7291_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %entry.ad7291_threshold_reg.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 9, label %entry.sw.epilog.i_crit_edge
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

entry.ad7291_threshold_reg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7291_threshold_reg.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel.i, align 4
  %phi.bo.i = mul i32 %6, 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %entry.sw.epilog.i_crit_edge
  %offset.0.i = phi i32 [ %phi.bo.i, %sw.bb.i ], [ 24, %entry.sw.epilog.i_crit_edge ]
  %7 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %info, label %sw.epilog.i.ad7291_threshold_reg.exit_crit_edge [
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb5.i
  ]

sw.epilog.i.ad7291_threshold_reg.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7291_threshold_reg.exit

sw.bb2.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %offset.0.i, 4
  br label %ad7291_threshold_reg.exit

if.else.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add4.i = add i32 %offset.0.i, 5
  br label %ad7291_threshold_reg.exit

sw.bb5.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %add7.i = add i32 %offset.0.i, 6
  br label %ad7291_threshold_reg.exit

ad7291_threshold_reg.exit:                        ; preds = %sw.bb5.i, %if.else.i, %if.then.i, %sw.epilog.i.ad7291_threshold_reg.exit_crit_edge, %entry.ad7291_threshold_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %sw.bb5.i ], [ %add.i, %if.then.i ], [ %add4.i, %if.else.i ], [ 0, %entry.ad7291_threshold_reg.exit_crit_edge ], [ 0, %sw.epilog.i.ad7291_threshold_reg.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %9, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %ad7291_i2c_read.exit.thread, label %if.end

ad7291_i2c_read.exit.thread:                      ; preds = %ad7291_threshold_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %ad7291_threshold_reg.exit
  %conv.i.i = trunc i32 %call.i.i to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %info)
  %cmp4 = icmp eq i32 %info, 2
  br i1 %cmp4, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %lor.lhs.false.if.then9_crit_edge, label %if.else

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %13 = and i16 %10, 4095
  %and = zext i16 %13 to i32
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %conv11 = zext i16 %10 to i32
  %shl.i = shl i32 %conv11, 20
  %shr.i = ashr exact i32 %shl.i, 20
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %storemerge = phi i32 [ %shr.i, %if.else ], [ %and, %if.then9 ]
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %ad7291_i2c_read.exit.thread
  %retval.0 = phi i32 [ 1, %if.end13 ], [ %call.i.i, %ad7291_i2c_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7291_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %info)
  %cmp = icmp eq i32 %info, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %val)
  %cmp3 = icmp ugt i32 %val, 4095
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end12thread-pre-split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %4 = add i32 %val, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %4)
  %5 = icmp ult i32 %4, -4096
  br i1 %5, label %if.else.cleanup_crit_edge, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12thread-pre-split:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %chan, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %if.else.if.end12_crit_edge
  %7 = phi i32 [ %.pr, %if.end12thread-pre-split ], [ %3, %if.else.if.end12_crit_edge ]
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %7, label %if.end12.ad7291_threshold_reg.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 9, label %if.end12.sw.epilog.i_crit_edge
  ]

if.end12.sw.epilog.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end12.ad7291_threshold_reg.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7291_threshold_reg.exit

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %9 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel.i, align 4
  %phi.bo.i = mul i32 %10, 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end12.sw.epilog.i_crit_edge
  %offset.0.i = phi i32 [ %phi.bo.i, %sw.bb.i ], [ 24, %if.end12.sw.epilog.i_crit_edge ]
  %11 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %info, label %sw.epilog.i.ad7291_threshold_reg.exit_crit_edge [
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb5.i
  ]

sw.epilog.i.ad7291_threshold_reg.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7291_threshold_reg.exit

sw.bb2.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %offset.0.i, 4
  br label %ad7291_threshold_reg.exit

if.else.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add4.i = add i32 %offset.0.i, 5
  br label %ad7291_threshold_reg.exit

sw.bb5.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %add7.i = add i32 %offset.0.i, 6
  br label %ad7291_threshold_reg.exit

ad7291_threshold_reg.exit:                        ; preds = %sw.bb5.i, %if.else.i, %if.then.i, %sw.epilog.i.ad7291_threshold_reg.exit_crit_edge, %if.end12.ad7291_threshold_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %add7.i, %sw.bb5.i ], [ %add.i, %if.then.i ], [ %add4.i, %if.else.i ], [ 0, %if.end12.ad7291_threshold_reg.exit_crit_edge ], [ 0, %sw.epilog.i.ad7291_threshold_reg.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i8
  %conv14 = trunc i32 %val to i16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv14) #6
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext %conv, i16 noundef zeroext %14) #6
  br label %cleanup

cleanup:                                          ; preds = %ad7291_threshold_reg.exit, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %ad7291_threshold_reg.exit ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_ad7291__288_559_ad7291_driver_init6, !1, !"__initcall__kmod_ad7291__288_559_ad7291_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7291.c", i32 559, i32 1}
!2 = !{ptr @__exitcall_ad7291_driver_exit, !1, !"__exitcall_ad7291_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7291.c", i32 561, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7291.c", i32 562, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7291.c", i32 563, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7291.c", i32 553, i32 11}
!12 = !{ptr @ad7291_driver, !13, !"ad7291_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7291.c", i32 551, i32 26}
!14 = !{ptr @ad7291_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7291.c", i32 480, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/ad7291.c", i32 488, i32 56}
!19 = !{ptr @ad7291_channels, !20, !"ad7291_channels", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/ad7291.c", i32 434, i32 35}
!21 = !{ptr @ad7291_events, !22, !"ad7291_events", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/ad7291.c", i32 405, i32 36}
!23 = !{ptr @ad7291_info, !24, !"ad7291_info", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/ad7291.c", i32 455, i32 30}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/ad7291.c", i32 94, i32 3}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ad7291_i2c_read._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @ad7291_i2c_read._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ad7291_of_match, !34, !"ad7291_of_match", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/ad7291.c", i32 545, i32 34}
!35 = !{ptr @ad7291_id, !36, !"ad7291_id", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/ad7291.c", i32 538, i32 35}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
