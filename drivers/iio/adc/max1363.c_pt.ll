; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/max1363.c_pt.bc'
source_filename = "../drivers/iio/adc/max1363.c"
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
%struct.max1363_chip_info = type { ptr, ptr, i32, ptr, i32, i16, i8, i8 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.max1363_mode = type { i8, [1 x i32] }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.max1363_state = type { ptr, i8, i8, ptr, ptr, i32, ptr, %struct.mutex, i8, i8, i8, i8, [8 x i16], [8 x i16], ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_max1363__288_1740_max1363_driver_init6 = internal global ptr @max1363_driver_init, section ".initcall6.init", align 4
@max1363_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max1363_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max1363_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max1363_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max1363_driver_exit = internal global ptr @max1363_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"max1363.author=Jonathan Cameron <jic23@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [35 x i8] c"max1363.description=Maxim 1363 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"max1363.file=drivers/iio/adc/max1363\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"max1363.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max1363\00", [24 x i8] zeroinitializer }, align 32
@max1363_of_match = internal constant { [39 x %struct.of_device_id], [1892 x i8] } { [39 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1361\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @max1363_chip_info_tbl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1362\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1363\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1364\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1036\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1037\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1038\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1039\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 168) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1136\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 192) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1137\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 216) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1138\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 240) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1139\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 264) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1236\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 288) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1237\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 312) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1238\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 336) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1239\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 360) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 384) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11601\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 408) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11602\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 432) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11603\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 456) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11604\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 480) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11605\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 504) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11606\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 528) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11607\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 552) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11608\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 576) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11609\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 600) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11610\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 624) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11611\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 648) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11612\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 672) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11613\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 696) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11614\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 720) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11615\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 744) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11616\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 768) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11617\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 792) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11644\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 816) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11645\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 840) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11646\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 864) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11647\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @max1363_chip_info_tbl, i64 888) }, %struct.of_device_id zeroinitializer], [1892 x i8] zeroinitializer }, align 32
@max1363_id = internal constant { [39 x %struct.i2c_device_id], [248 x i8] } { [39 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max1361\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max1362\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max1363\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max1364\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max1036\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max1037\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"max1038\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"max1039\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"max1136\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max1137\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"max1138\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"max1139\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"max1236\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"max1237\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"max1238\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id { [20 x i8] c"max1239\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id { [20 x i8] c"max11600\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"max11601\00\00\00\00\00\00\00\00\00\00\00\00", i32 17 }, %struct.i2c_device_id { [20 x i8] c"max11602\00\00\00\00\00\00\00\00\00\00\00\00", i32 18 }, %struct.i2c_device_id { [20 x i8] c"max11603\00\00\00\00\00\00\00\00\00\00\00\00", i32 19 }, %struct.i2c_device_id { [20 x i8] c"max11604\00\00\00\00\00\00\00\00\00\00\00\00", i32 20 }, %struct.i2c_device_id { [20 x i8] c"max11605\00\00\00\00\00\00\00\00\00\00\00\00", i32 21 }, %struct.i2c_device_id { [20 x i8] c"max11606\00\00\00\00\00\00\00\00\00\00\00\00", i32 22 }, %struct.i2c_device_id { [20 x i8] c"max11607\00\00\00\00\00\00\00\00\00\00\00\00", i32 23 }, %struct.i2c_device_id { [20 x i8] c"max11608\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.i2c_device_id { [20 x i8] c"max11609\00\00\00\00\00\00\00\00\00\00\00\00", i32 25 }, %struct.i2c_device_id { [20 x i8] c"max11610\00\00\00\00\00\00\00\00\00\00\00\00", i32 26 }, %struct.i2c_device_id { [20 x i8] c"max11611\00\00\00\00\00\00\00\00\00\00\00\00", i32 27 }, %struct.i2c_device_id { [20 x i8] c"max11612\00\00\00\00\00\00\00\00\00\00\00\00", i32 28 }, %struct.i2c_device_id { [20 x i8] c"max11613\00\00\00\00\00\00\00\00\00\00\00\00", i32 29 }, %struct.i2c_device_id { [20 x i8] c"max11614\00\00\00\00\00\00\00\00\00\00\00\00", i32 30 }, %struct.i2c_device_id { [20 x i8] c"max11615\00\00\00\00\00\00\00\00\00\00\00\00", i32 31 }, %struct.i2c_device_id { [20 x i8] c"max11616\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.i2c_device_id { [20 x i8] c"max11617\00\00\00\00\00\00\00\00\00\00\00\00", i32 33 }, %struct.i2c_device_id { [20 x i8] c"max11644\00\00\00\00\00\00\00\00\00\00\00\00", i32 34 }, %struct.i2c_device_id { [20 x i8] c"max11645\00\00\00\00\00\00\00\00\00\00\00\00", i32 35 }, %struct.i2c_device_id { [20 x i8] c"max11646\00\00\00\00\00\00\00\00\00\00\00\00", i32 36 }, %struct.i2c_device_id { [20 x i8] c"max11647\00\00\00\00\00\00\00\00\00\00\00\00", i32 37 }, %struct.i2c_device_id zeroinitializer], [248 x i8] zeroinitializer }, align 32
@max1363_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@max1363_chip_info_tbl = internal constant { [38 x %struct.max1363_chip_info], [240 x i8] } { [38 x %struct.max1363_chip_info] [%struct.max1363_chip_info { ptr @max1363_info, ptr @max1361_channels, i32 9, ptr @max1363_mode_list, i32 27, i16 2048, i8 13, i8 10 }, %struct.max1363_chip_info { ptr @max1363_info, ptr @max1361_channels, i32 9, ptr @max1363_mode_list, i32 27, i16 4096, i8 13, i8 10 }, %struct.max1363_chip_info { ptr @max1363_info, ptr @max1363_channels, i32 9, ptr @max1363_mode_list, i32 27, i16 2048, i8 13, i8 12 }, %struct.max1363_chip_info { ptr @max1363_info, ptr @max1363_channels, i32 9, ptr @max1363_mode_list, i32 27, i16 4096, i8 13, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1036_channels, i32 9, ptr @max1236_mode_list, i32 27, i16 4096, i8 14, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1036_channels, i32 9, ptr @max1236_mode_list, i32 27, i16 2048, i8 14, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1038_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 4096, i8 54, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1038_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 2048, i8 54, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1136_channels, i32 9, ptr @max1236_mode_list, i32 27, i16 4096, i8 14, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1136_channels, i32 9, ptr @max1236_mode_list, i32 27, i16 2048, i8 14, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1138_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 4096, i8 54, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1138_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 2048, i8 54, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1236_channels, i32 9, ptr @max1236_mode_list, i32 27, i16 4096, i8 14, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1236_channels, i32 9, ptr @max1236_mode_list, i32 27, i16 2048, i8 14, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1238_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 4096, i8 54, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1238_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 2048, i8 54, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1036_channels, i32 9, ptr @max11607_mode_list, i32 27, i16 4096, i8 14, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1036_channels, i32 9, ptr @max11607_mode_list, i32 27, i16 2048, i8 14, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11602_channels, i32 17, ptr @max11608_mode_list, i32 32, i16 4096, i8 30, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11602_channels, i32 17, ptr @max11608_mode_list, i32 32, i16 2048, i8 30, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1038_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 4096, i8 54, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1038_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 2048, i8 54, i8 8 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1136_channels, i32 9, ptr @max11607_mode_list, i32 27, i16 4096, i8 14, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1136_channels, i32 9, ptr @max11607_mode_list, i32 27, i16 2048, i8 14, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11608_channels, i32 17, ptr @max11608_mode_list, i32 32, i16 4096, i8 30, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11608_channels, i32 17, ptr @max11608_mode_list, i32 32, i16 2048, i8 30, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1138_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 4096, i8 54, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1138_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 2048, i8 54, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1363_channels, i32 9, ptr @max11607_mode_list, i32 27, i16 4096, i8 14, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1363_channels, i32 9, ptr @max11607_mode_list, i32 27, i16 2048, i8 14, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11614_channels, i32 17, ptr @max11608_mode_list, i32 32, i16 4096, i8 30, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11614_channels, i32 17, ptr @max11608_mode_list, i32 32, i16 2048, i8 30, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1238_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 4096, i8 54, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max1238_channels, i32 25, ptr @max1238_mode_list, i32 40, i16 2048, i8 54, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11644_channels, i32 5, ptr @max11644_mode_list, i32 24, i16 4096, i8 5, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11644_channels, i32 5, ptr @max11644_mode_list, i32 24, i16 2048, i8 5, i8 12 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11646_channels, i32 5, ptr @max11644_mode_list, i32 24, i16 4096, i8 5, i8 10 }, %struct.max1363_chip_info { ptr @max1238_info, ptr @max11646_channels, i32 5, ptr @max11644_mode_list, i32 24, i16 2048, i8 5, i8 10 }], [240 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max1363_event\00", [18 x i8] zeroinitializer }, align 32
@max1363_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @max1363_event_attribute_group, ptr null, ptr @max1363_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max1363_read_event_config, ptr @max1363_write_event_config, ptr @max1363_read_thresh, ptr @max1363_write_thresh, ptr null, ptr @max1363_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max1361_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 4, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 5, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 6, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 7, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@max1363_mode_list = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 24, i32 25, i32 27, i32 12, i32 13, i32 18, i32 19, i32 41, i32 48], [44 x i8] zeroinitializer }, align 32
@max1363_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 4, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 5, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 6, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 7, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max1363_events, i32 2, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@max1238_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @max1363_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max1363_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max1036_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 4, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 5, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 6, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 7, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@max1236_mode_list = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 24, i32 25, i32 27, i32 12, i32 13, i32 18, i32 19, i32 41, i32 48, i32 26], [40 x i8] zeroinitializer }, align 32
@max1038_channels = internal constant { [25 x %struct.iio_chan_spec], [552 x i8] } { [25 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 12, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 13, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 14, i32 14, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 15, i32 15, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 80 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 16, i32 16, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 80 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 17, i32 17, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 18, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 19, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 20, i32 20, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 21, i32 21, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 80 }, %struct.iio_chan_spec { i32 0, i32 9, i32 8, i32 22, i32 22, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.31, i8 80 }, %struct.iio_chan_spec { i32 0, i32 11, i32 10, i32 23, i32 23, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 24, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [552 x i8] zeroinitializer }, align 32
@max1238_mode_list = internal constant { [54 x i32], [40 x i8] } { [54 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 27, i32 28, i32 29, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 41, i32 42, i32 43, i32 45, i32 47, i32 48, i32 49, i32 50, i32 52, i32 54, i32 31, i32 33, i32 35, i32 37, i32 39, i32 44, i32 46, i32 51, i32 53], [40 x i8] zeroinitializer }, align 32
@max1136_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 4, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 5, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 6, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 7, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@max1138_channels = internal constant { [25 x %struct.iio_chan_spec], [552 x i8] } { [25 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 12, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 13, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 14, i32 14, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 15, i32 15, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 80 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 16, i32 16, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 80 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 17, i32 17, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 18, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 19, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 20, i32 20, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 21, i32 21, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 80 }, %struct.iio_chan_spec { i32 0, i32 9, i32 8, i32 22, i32 22, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.31, i8 80 }, %struct.iio_chan_spec { i32 0, i32 11, i32 10, i32 23, i32 23, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 24, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [552 x i8] zeroinitializer }, align 32
@max1236_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 4, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 5, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 6, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 7, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@max1238_channels = internal constant { [25 x %struct.iio_chan_spec], [552 x i8] } { [25 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 12, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 13, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 14, i32 14, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 15, i32 15, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 80 }, %struct.iio_chan_spec { i32 0, i32 8, i32 9, i32 16, i32 16, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 80 }, %struct.iio_chan_spec { i32 0, i32 10, i32 11, i32 17, i32 17, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 18, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 19, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 20, i32 20, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 21, i32 21, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 80 }, %struct.iio_chan_spec { i32 0, i32 9, i32 8, i32 22, i32 22, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.31, i8 80 }, %struct.iio_chan_spec { i32 0, i32 11, i32 10, i32 23, i32 23, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 24, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [552 x i8] zeroinitializer }, align 32
@max11607_mode_list = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 24, i32 25, i32 27, i32 26, i32 12, i32 13, i32 18, i32 19, i32 41, i32 48], [40 x i8] zeroinitializer }, align 32
@max11602_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.86 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 8, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 9, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 14, i32 10, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 15, i32 11, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 12, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 13, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 20, i32 14, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 21, i32 15, %struct.anon.86 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [360 x i8] zeroinitializer }, align 32
@max11608_mode_list = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 27, i32 28, i32 29, i32 30, i32 32, i32 31, i32 12, i32 13, i32 14, i32 15, i32 18, i32 19, i32 20, i32 21, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50], [40 x i8] zeroinitializer }, align 32
@max11608_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 8, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 9, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 14, i32 10, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 15, i32 11, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 12, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 13, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 20, i32 14, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 21, i32 15, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [360 x i8] zeroinitializer }, align 32
@max11614_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 8, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 13, i32 9, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 14, i32 10, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 15, i32 11, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 12, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 19, i32 13, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 20, i32 14, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 21, i32 15, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [360 x i8] zeroinitializer }, align 32
@max11644_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 3, %struct.anon.86 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@max11644_mode_list = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 24, i32 12, i32 18], [44 x i8] zeroinitializer }, align 32
@max11646_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 12, i32 2, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 3, %struct.anon.86 { i8 115, i8 10, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 80 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@max1363_event_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max1363_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max1363_event_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_sampling_frequency, ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max1363_monitor_show_freq, ptr @max1363_monitor_store_freq }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.7, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sampling_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@max1363_monitor_speeds = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 133000, i32 665000, i32 33300, i32 16600, i32 8300, i32 4200, i32 2000, i32 1000], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"133000 665000 33300 16600 8300 4200 2000 1000\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@max1363_mode_table = internal constant { [55 x %struct.max1363_mode], [104 x i8] } { [55 x %struct.max1363_mode] [%struct.max1363_mode { i8 97, [1 x i32] [i32 1] }, %struct.max1363_mode { i8 99, [1 x i32] [i32 2] }, %struct.max1363_mode { i8 101, [1 x i32] [i32 4] }, %struct.max1363_mode { i8 103, [1 x i32] [i32 8] }, %struct.max1363_mode { i8 105, [1 x i32] [i32 16] }, %struct.max1363_mode { i8 107, [1 x i32] [i32 32] }, %struct.max1363_mode { i8 109, [1 x i32] [i32 64] }, %struct.max1363_mode { i8 111, [1 x i32] [i32 128] }, %struct.max1363_mode { i8 113, [1 x i32] [i32 256] }, %struct.max1363_mode { i8 115, [1 x i32] [i32 512] }, %struct.max1363_mode { i8 117, [1 x i32] [i32 1024] }, %struct.max1363_mode { i8 119, [1 x i32] [i32 2048] }, %struct.max1363_mode { i8 96, [1 x i32] [i32 4096] }, %struct.max1363_mode { i8 100, [1 x i32] [i32 8192] }, %struct.max1363_mode { i8 104, [1 x i32] [i32 16384] }, %struct.max1363_mode { i8 108, [1 x i32] [i32 32768] }, %struct.max1363_mode { i8 112, [1 x i32] [i32 65536] }, %struct.max1363_mode { i8 116, [1 x i32] [i32 131072] }, %struct.max1363_mode { i8 98, [1 x i32] [i32 262144] }, %struct.max1363_mode { i8 102, [1 x i32] [i32 524288] }, %struct.max1363_mode { i8 106, [1 x i32] [i32 1048576] }, %struct.max1363_mode { i8 110, [1 x i32] [i32 2097152] }, %struct.max1363_mode { i8 114, [1 x i32] [i32 4194304] }, %struct.max1363_mode { i8 118, [1 x i32] [i32 8388608] }, %struct.max1363_mode { i8 3, [1 x i32] [i32 3] }, %struct.max1363_mode { i8 5, [1 x i32] [i32 7] }, %struct.max1363_mode { i8 71, [1 x i32] [i32 12] }, %struct.max1363_mode { i8 7, [1 x i32] [i32 15] }, %struct.max1363_mode { i8 9, [1 x i32] [i32 31] }, %struct.max1363_mode { i8 11, [1 x i32] [i32 63] }, %struct.max1363_mode { i8 13, [1 x i32] [i32 127] }, %struct.max1363_mode { i8 79, [1 x i32] [i32 192] }, %struct.max1363_mode { i8 15, [1 x i32] [i32 255] }, %struct.max1363_mode { i8 81, [1 x i32] [i32 448] }, %struct.max1363_mode { i8 17, [1 x i32] [i32 511] }, %struct.max1363_mode { i8 83, [1 x i32] [i32 960] }, %struct.max1363_mode { i8 19, [1 x i32] [i32 1023] }, %struct.max1363_mode { i8 85, [1 x i32] [i32 1984] }, %struct.max1363_mode { i8 21, [1 x i32] [i32 2047] }, %struct.max1363_mode { i8 87, [1 x i32] [i32 4032] }, %struct.max1363_mode { i8 23, [1 x i32] [i32 4095] }, %struct.max1363_mode { i8 4, [1 x i32] [i32 12288] }, %struct.max1363_mode { i8 8, [1 x i32] [i32 28672] }, %struct.max1363_mode { i8 12, [1 x i32] [i32 61440] }, %struct.max1363_mode { i8 81, [1 x i32] [i32 98304] }, %struct.max1363_mode { i8 16, [1 x i32] [i32 126976] }, %struct.max1363_mode { i8 85, [1 x i32] [i32 229376] }, %struct.max1363_mode { i8 20, [1 x i32] [i32 258048] }, %struct.max1363_mode { i8 6, [1 x i32] [i32 786432] }, %struct.max1363_mode { i8 10, [1 x i32] [i32 1835008] }, %struct.max1363_mode { i8 14, [1 x i32] [i32 3932160] }, %struct.max1363_mode { i8 83, [1 x i32] [i32 6291456] }, %struct.max1363_mode { i8 18, [1 x i32] [i32 8126464] }, %struct.max1363_mode { i8 87, [1 x i32] [i32 14680064] }, %struct.max1363_mode { i8 22, [1 x i32] [i32 16515072] }], [104 x i8] zeroinitializer }, align 32
@max1363_events = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN0\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN0-AIN1\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN2-AIN3\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN1-AIN0\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN3-AIN2\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN4\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN5\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN6\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN7\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN8\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN9\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN10\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN11\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN4-AIN5\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN6-AIN7\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN8-AIN9\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIN10-AIN11\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN5-AIN4\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN7-AIN6\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIN9-AIN8\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIN11-AIN10\00", [20 x i8] zeroinitializer }, align 32
@max1363_event_codes = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 562949953421312, i64 562949953421313, i64 562949953421314, i64 562949953421315, i64 281474976710656, i64 281474976710657, i64 281474976710658, i64 281474976710659], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [10 x i64] [i64 8, i64 32, i64 1000, i64 2000, i64 4200, i64 8300, i64 16600, i64 33300, i64 133000, i64 665000]
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"max1363_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1732, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1734, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"max1363_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1537, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"max1363_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1688, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1605, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1606, i32 45 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"max1363_chip_info_tbl\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1056, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1624, i32 51 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1678, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"max1363_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1045, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"max1361_channels\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 529, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"max1363_mode_list\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 447, i32 33 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"max1363_channels\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 531, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"max1238_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1040, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"max1036_channels\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 523, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"max1236_mode_list\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 535, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"max1038_channels\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 583, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"max1238_mode_list\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 544, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"max1136_channels\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 525, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"max1138_channels\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 584, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"max1236_channels\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 527, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"max1238_channels\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 585, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"max11607_mode_list\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 587, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"max11602_channels\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 624, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"max11608_mode_list\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 595, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"max11608_channels\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 625, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"max11614_channels\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 626, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"max11644_channels\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 641, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"max11644_mode_list\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 628, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"max11646_channels\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 640, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant [30 x i8] c"max1363_event_attribute_group\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1020, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant [25 x i8] c"max1363_event_attributes\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1014, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_sampling_frequency\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 723, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 691, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"max1363_monitor_speeds\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 683, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 727, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"max1363_mode_table\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 237, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"max1363_events\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 454, i32 36 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 530, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 583, i32 56 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"max1363_event_codes\00", align 1
@___asan_gen_.235 = private constant [29 x i8] c"../drivers/iio/adc/max1363.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 775, i32 18 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max1363_driver_exit, ptr @__initcall__kmod_max1363__288_1740_max1363_driver_init6, ptr @max1363_driver_exit, ptr @max1363_driver, ptr @.str, ptr @max1363_of_match, ptr @max1363_id, ptr @max1363_probe.__key, ptr @.str.1, ptr @.str.2, ptr @max1363_chip_info_tbl, ptr @.str.3, ptr @.str.4, ptr @max1363_info, ptr @max1361_channels, ptr @max1363_mode_list, ptr @max1363_channels, ptr @max1238_info, ptr @max1036_channels, ptr @max1236_mode_list, ptr @max1038_channels, ptr @max1238_mode_list, ptr @max1136_channels, ptr @max1138_channels, ptr @max1236_channels, ptr @max1238_channels, ptr @max11607_mode_list, ptr @max11602_channels, ptr @max11608_mode_list, ptr @max11608_channels, ptr @max11614_channels, ptr @max11644_channels, ptr @max11644_mode_list, ptr @max11646_channels, ptr @max1363_event_attribute_group, ptr @max1363_event_attributes, ptr @iio_dev_attr_sampling_frequency, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.5, ptr @.str.6, ptr @max1363_monitor_speeds, ptr @.str.7, ptr @.str.8, ptr @max1363_mode_table, ptr @max1363_events, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @max1363_event_codes], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_of_match to i32), i32 7644, i32 9536, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_id to i32), i32 936, i32 1184, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_chip_info_tbl to i32), i32 912, i32 1152, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1361_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_mode_list to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1238_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1036_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1236_mode_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1038_channels to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1238_mode_list to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1136_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1138_channels to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1236_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1238_channels to i32), i32 2200, i32 2752, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11607_mode_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11602_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11608_mode_list to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11608_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11614_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11644_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11644_mode_list to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11646_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_event_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_event_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_monitor_speeds to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_mode_table to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1363_event_codes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max1363_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max1363_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @max1363_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 168) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup106_crit_edge, label %if.end

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call3 = tail call i32 @devm_iio_map_array_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup106_crit_edge, label %if.end5

if.end.cleanup106_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max1363_probe.__key) #9
  %call8 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %reg = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup106

if.end14:                                         ; preds = %if.end5
  %call16 = tail call i32 @regulator_enable(ptr noundef %call8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup106_crit_edge

if.end14.cleanup106_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end19:                                         ; preds = %if.end14
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @max1363_reg_disable, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %7) #9
  br label %cleanup106

if.end25:                                         ; preds = %if.end19
  %call27 = tail call ptr @device_get_match_data(ptr noundef %dev) #9
  %chip_info = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call27, ptr %chip_info, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.then30, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [38 x %struct.max1363_chip_info], ptr @max1363_chip_info_tbl, i32 0, i32 %10
  %11 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %chip_info, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25.if.end32_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %3, align 4
  %13 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_info, align 4
  %int_vref_mv = getelementptr inbounds %struct.max1363_chip_info, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %int_vref_mv to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %int_vref_mv, align 4
  %conv = zext i16 %16 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %vref_uv = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %vref_uv to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %vref_uv, align 4
  %call36 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %cmp.i181 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.end32.if.end56_crit_edge, label %if.then38

if.end32.if.end56_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then38:                                        ; preds = %if.end32
  %call40 = tail call i32 @regulator_enable(ptr noundef %call36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then38.cleanup106_crit_edge

if.then38.cleanup106_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end43:                                         ; preds = %if.then38
  %call45 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %call36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.cleanup106_crit_edge

if.end43.cleanup106_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end48:                                         ; preds = %if.end43
  %vref49 = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %vref49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call36, ptr %vref49, align 4
  %call50 = tail call i32 @regulator_get_voltage(ptr noundef %call36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %if.end48.cleanup106_crit_edge, label %cleanup

if.end48.cleanup106_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

cleanup:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %vref_uv to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call50, ptr %vref_uv, align 4
  br label %if.end56

if.end56:                                         ; preds = %cleanup, %if.end32.if.end56_crit_edge
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i182 = tail call i32 %25(ptr noundef %21) #9
  %and.i = and i32 %call.i.i182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool58.not = icmp eq i32 %and.i, 0
  br i1 %tobool58.not, label %if.else, label %if.end56.if.end72_crit_edge

if.end56.if.end72_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.else:                                          ; preds = %if.end56
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %algo.i.i184 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %algo.i.i184 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %algo.i.i184, align 8
  %functionality.i.i185 = getelementptr inbounds %struct.i2c_algorithm, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %functionality.i.i185 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %functionality.i.i185, align 4
  %call.i.i186 = tail call i32 %31(ptr noundef %27) #9
  %and.i187 = and i32 %call.i.i186, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i187)
  %cmp.i188.not = icmp eq i32 %and.i187, 393216
  br i1 %cmp.i188.not, label %land.lhs.true, label %if.else.cleanup106_crit_edge

if.else.cleanup106_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

land.lhs.true:                                    ; preds = %if.else
  %32 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip_info, align 4
  %bits = getelementptr inbounds %struct.max1363_chip_info, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %cmp65 = icmp eq i8 %35, 8
  br i1 %cmp65, label %land.lhs.true.if.end72_crit_edge, label %land.lhs.true.cleanup106_crit_edge

land.lhs.true.cleanup106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true.if.end72_crit_edge, %if.end56.if.end72_crit_edge
  %max1363_smbus_send.sink = phi ptr [ @i2c_master_send, %if.end56.if.end72_crit_edge ], [ @max1363_smbus_send, %land.lhs.true.if.end72_crit_edge ]
  %max1363_smbus_recv.sink = phi ptr [ @i2c_master_recv, %if.end56.if.end72_crit_edge ], [ @max1363_smbus_recv, %land.lhs.true.if.end72_crit_edge ]
  %send68 = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 16
  %36 = ptrtoint ptr %send68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %max1363_smbus_send.sink, ptr %send68, align 4
  %recv69 = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 17
  %37 = ptrtoint ptr %recv69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %max1363_smbus_recv.sink, ptr %recv69, align 4
  %call73 = tail call fastcc i32 @max1363_alloc_scan_masks(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup106_crit_edge

if.end72.cleanup106_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end76:                                         ; preds = %if.end72
  %name77 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %38 = ptrtoint ptr %name77 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %id, ptr %name77, align 8
  %39 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info, align 4
  %channels = getelementptr inbounds %struct.max1363_chip_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channels, align 4
  %channels79 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %43 = ptrtoint ptr %channels79 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %channels79, align 8
  %44 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.max1363_chip_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_channels, align 4
  %num_channels81 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %47 = ptrtoint ptr %num_channels81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %num_channels81, align 4
  %48 = load ptr, ptr %chip_info, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %info83 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %51 = ptrtoint ptr %info83 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %info83, align 8
  %52 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %call, align 8
  %call84 = tail call fastcc i32 @max1363_initial_setup(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end76.cleanup106_crit_edge, label %if.end88

if.end76.cleanup106_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end88:                                         ; preds = %if.end76
  %call90 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @max1363_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end88.cleanup106_crit_edge

if.end88.cleanup106_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end93:                                         ; preds = %if.end88
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool94.not = icmp eq i32 %54, 0
  br i1 %tobool94.not, label %if.end93.if.end103_crit_edge, label %if.then95

if.end93.if.end103_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then95:                                        ; preds = %if.end93
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %irq98 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %irq98 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq98, align 4
  %call99 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %58, ptr noundef null, ptr noundef nonnull @max1363_event_handler, i32 noundef 8193, ptr noundef nonnull @.str.4, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then95.if.end103_crit_edge, label %if.then95.cleanup106_crit_edge

if.then95.cleanup106_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.then95.if.end103_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.end103:                                        ; preds = %if.then95.if.end103_crit_edge, %if.end93.if.end103_crit_edge
  %call105 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #9
  br label %cleanup106

cleanup106:                                       ; preds = %if.end103, %if.then95.cleanup106_crit_edge, %if.end88.cleanup106_crit_edge, %if.end76.cleanup106_crit_edge, %if.end72.cleanup106_crit_edge, %land.lhs.true.cleanup106_crit_edge, %if.else.cleanup106_crit_edge, %if.end48.cleanup106_crit_edge, %if.end43.cleanup106_crit_edge, %if.then38.cleanup106_crit_edge, %devm_add_action_or_reset.exit, %if.end14.cleanup106_crit_edge, %if.then11, %if.end.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  %retval.1 = phi i32 [ %5, %if.then11 ], [ %call105, %if.end103 ], [ -12, %entry.cleanup106_crit_edge ], [ %call3, %if.end.cleanup106_crit_edge ], [ %call16, %if.end14.cleanup106_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ -95, %land.lhs.true.cleanup106_crit_edge ], [ -95, %if.else.cleanup106_crit_edge ], [ %call73, %if.end72.cleanup106_crit_edge ], [ %call84, %if.end76.cleanup106_crit_edge ], [ %call90, %if.end88.cleanup106_crit_edge ], [ %call99, %if.then95.cleanup106_crit_edge ], [ -22, %if.end48.cleanup106_crit_edge ], [ %call45, %if.end43.cleanup106_crit_edge ], [ %call40, %if.then38.cleanup106_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_map_array_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @max1363_reg_disable, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @regulator_disable(ptr noundef %data) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max1363_reg_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_master_send(ptr noundef %client, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %buf, i32 noundef %count, i16 noundef zeroext 0) #9
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_master_recv(ptr noundef %client, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %buf, i32 noundef %count, i16 noundef zeroext 1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_smbus_send(ptr noundef %client, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp17 = icmp sgt i32 %count, 0
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %1) #9
  %inc = add nuw nsw i32 %i.08, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count)
  %cmp1 = icmp slt i32 %inc, %count
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.sel = select i1 %cmp, i32 %count, i32 %call
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %cmp.lcssa = phi i32 [ %count, %entry.for.end_crit_edge ], [ %phi.sel, %for.end.loopexit ]
  ret i32 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_smbus_recv(ptr noundef %client, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp8 = icmp sgt i32 %count, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %conv = trunc i32 %call to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max1363_alloc_scan_masks(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %chip_info = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %num_modes = getelementptr inbounds %struct.max1363_chip_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_modes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_modes, align 2
  %conv = zext i8 %5 to i32
  %add = shl nuw nsw i32 %conv, 2
  %6 = add nuw nsw i32 %add, 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info, align 4
  %num_modes420 = getelementptr inbounds %struct.max1363_chip_info, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %num_modes420 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_modes420, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp22.not = icmp eq i8 %10, 0
  br i1 %cmp22.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %11 = phi ptr [ %20, %for.body.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %call.i, i32 %i.023
  %mode_list = getelementptr inbounds %struct.max1363_chip_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mode_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_list, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %i.023
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %modemask = getelementptr [55 x %struct.max1363_mode], ptr @max1363_mode_table, i32 0, i32 %15, i32 1
  %16 = ptrtoint ptr %modemask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %modemask, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr, align 4
  %inc = add nuw nsw i32 %i.023, 1
  %19 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info, align 4
  %num_modes4 = getelementptr inbounds %struct.max1363_chip_info, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %num_modes4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_modes4, align 2
  %conv5 = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 6
  %23 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %available_scan_masks, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max1363_initial_setup(ptr nocapture noundef %st) unnamed_addr #2 align 64 {
entry:
  %tx_buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %setupbyte = getelementptr inbounds %struct.max1363_state, ptr %st, i32 0, i32 1
  %vref = getelementptr inbounds %struct.max1363_state, ptr %st, i32 0, i32 14
  %0 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vref, align 4
  %tobool.not = icmp eq ptr %1, null
  %. = select i1 %tobool.not, i8 -46, i8 -94
  %2 = ptrtoint ptr %setupbyte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %setupbyte, align 4
  %chip_info = getelementptr inbounds %struct.max1363_state, ptr %st, i32 0, i32 3
  %3 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_info, align 4
  %default_mode = getelementptr inbounds %struct.max1363_chip_info, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %default_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %default_mode, align 4
  %arrayidx = getelementptr [55 x %struct.max1363_mode], ptr @max1363_mode_table, i32 0, i32 %6
  %current_mode = getelementptr inbounds %struct.max1363_state, ptr %st, i32 0, i32 4
  %7 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %current_mode, align 4
  %configbyte.i = getelementptr inbounds %struct.max1363_state, ptr %st, i32 0, i32 2
  %8 = ptrtoint ptr %configbyte.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %configbyte.i, align 1
  %10 = and i8 %9, -128
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  %or.i = or i8 %12, %10
  store i8 %or.i, ptr %configbyte.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i) #9
  %13 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %., ptr %tx_buf.i.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or.i, ptr %13, align 1
  %send.i.i = getelementptr inbounds %struct.max1363_state, ptr %st, i32 0, i32 16
  %16 = ptrtoint ptr %send.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %send.i.i, align 4
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st, align 4
  %call.i.i = call i32 %17(ptr noundef %19, ptr noundef nonnull %tx_buf.i.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i) #9
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
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
  %current_mode = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_mode, align 4
  %modemask = getelementptr inbounds %struct.max1363_mode, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %modemask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modemask, align 4
  %and3.i = and i32 %7, 33554431
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3.i) #9
  %chip_info = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info, align 4
  %bits = getelementptr inbounds %struct.max1363_chip_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp.not = icmp eq i8 %11, 8
  %mul = shl i32 %call.i.i.i, 1
  %d_size.0 = select i1 %cmp.not, i32 %call.i.i.i, i32 %mul
  %scan_timestamp = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %scan_timestamp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %scan_timestamp, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then4

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %entry
  %add = add i32 %d_size.0, 8
  %rem = and i32 %d_size.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  br i1 %tobool5.not, label %if.then4.if.end10_crit_edge, label %if.then6

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %14 = add i32 %d_size.0, 16
  %add8 = and i32 %14, -8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then4.if.end10_crit_edge, %entry.if.end10_crit_edge
  %d_size.1 = phi i32 [ %add8, %if.then6 ], [ %add, %if.then4.if.end10_crit_edge ], [ %d_size.0, %entry.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp11 = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp11, label %if.end10.done_crit_edge, label %if.end8.i

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end8.i:                                        ; preds = %if.end10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %d_size.1, i32 noundef 3264) #12
  %cmp16 = icmp eq ptr %call9.i, null
  br i1 %cmp16, label %if.end8.i.done_crit_edge, label %if.end19

if.end8.i.done_crit_edge:                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end19:                                         ; preds = %if.end8.i
  %15 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip_info, align 4
  %bits21 = getelementptr inbounds %struct.max1363_chip_info, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %bits21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bits21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %18)
  %cmp23.not = icmp eq i8 %18, 8
  %recv29 = getelementptr inbounds %struct.max1363_state, ptr %3, i32 0, i32 17
  %19 = ptrtoint ptr %recv29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %recv29, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %cond.i.i.mul = select i1 %cmp23.not, i32 %call.i.i.i, i32 %mul
  %call31 = tail call i32 %20(ptr noundef %22, ptr noundef nonnull %call9.i, i32 noundef %cond.i.i.mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp33 = icmp slt i32 %call31, 0
  br i1 %cmp33, label %if.end19.done_free_crit_edge, label %if.end36

if.end19.done_free_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_free

if.end36:                                         ; preds = %if.end19
  %call37 = tail call i64 @iio_get_time_ns(ptr noundef %1) #9
  %23 = ptrtoint ptr %scan_timestamp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scan_timestamp, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end36.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i61

if.end36.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i61:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %26, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %call9.i, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call37, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i61, %if.end36.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %call9.i) #9
  br label %done_free

done_free:                                        ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.end19.done_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %done

done:                                             ; preds = %done_free, %if.end8.i.done_crit_edge, %if.end10.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %29) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  %rx = alloca i8, align 1
  %tx = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx) #9
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rx, align 1, !annotation !128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx) #9
  %3 = getelementptr inbounds [2 x i8], ptr %tx, i32 0, i32 1
  %setupbyte = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %setupbyte to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %setupbyte, align 4
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tx, align 1
  %monitor_speed = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %monitor_speed to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %monitor_speed, align 1
  %8 = lshr i8 %bf.load, 4
  %9 = or i8 %8, -15
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %3, align 1
  %recv = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %recv, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call3 = call i32 %12(ptr noundef %14, ptr noundef nonnull %rx, i32 noundef 1) #9
  %15 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rx, align 1
  %conv4 = zext i8 %16 to i32
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv4, ptr %mask, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call5)
  %cmp20 = icmp ult i32 %call5, 8
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %loc.021 = phi i32 [ %call8, %for.body.for.body_crit_edge ], [ %call5, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i64], ptr @max1363_event_codes, i32 0, i32 %loc.021
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx, align 8
  %call7 = call i32 @iio_push_event(ptr noundef %private, i64 noundef %19, i64 noundef %call1) #9
  %add = add nuw nsw i32 %loc.021, 1
  %call8 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 8, i32 noundef %add) #9
  %cmp = icmp ult i32 %call8, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %send = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %send, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call10 = call i32 %21(ptr noundef %23, ptr noundef nonnull %tx, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %tx_buf.i.i.i = alloca [2 x i8], align 1
  %rxbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rxbuf.i) #9
  %3 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %rxbuf.i, align 1, !annotation !128
  %4 = getelementptr inbounds [2 x i8], ptr %rxbuf.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !128
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2.i = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.max1363_read_single_chan.exit_crit_edge

sw.bb.max1363_read_single_chan.exit_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %max1363_read_single_chan.exit

if.end.i:                                         ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %monitor_on.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %monitor_on.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %monitor_on.i, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.error_ret.i_crit_edge

if.end.i.error_ret.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret.i

if.end5.i:                                        ; preds = %if.end.i
  %current_mode.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_mode.i, align 4
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %address.i, align 4
  %arrayidx.i = getelementptr [55 x %struct.max1363_mode], ptr @max1363_mode_table, i32 0, i32 %13
  %cmp.not.i = icmp eq ptr %11, %arrayidx.i
  br i1 %cmp.not.i, label %if.end5.i.if.end14.i_crit_edge, label %if.then6.i

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then6.i:                                       ; preds = %if.end5.i
  %14 = ptrtoint ptr %current_mode.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %current_mode.i, align 4
  %configbyte.i.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %configbyte.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %configbyte.i.i, align 1
  %17 = and i8 %16, -128
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 4
  %or.i.i = or i8 %19, %17
  store i8 %or.i.i, ptr %configbyte.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i.i) #9
  %20 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i.i, i32 0, i32 1
  %setupbyte.i.i.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %setupbyte.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %setupbyte.i.i.i, align 4
  %23 = ptrtoint ptr %tx_buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tx_buf.i.i.i, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or.i.i, ptr %20, align 1
  %send.i.i.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %send.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %send.i.i.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 %26(ptr noundef %28, ptr noundef nonnull %tx_buf.i.i.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp11.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp11.i, label %if.then6.i.error_ret.i_crit_edge, label %if.then6.i.if.end14.i_crit_edge

if.then6.i.if.end14.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then6.i.error_ret.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret.i

if.end14.i:                                       ; preds = %if.then6.i.if.end14.i_crit_edge, %if.end5.i.if.end14.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i.i, %if.then6.i.if.end14.i_crit_edge ], [ 0, %if.end5.i.if.end14.i_crit_edge ]
  %chip_info.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip_info.i, align 4
  %bits.i = getelementptr inbounds %struct.max1363_chip_info, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %32)
  %cmp15.not.i = icmp eq i8 %32, 8
  %recv31.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 17
  %33 = ptrtoint ptr %recv31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %recv31.i, align 4
  br i1 %cmp15.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i
  %call18.i = call i32 %34(ptr noundef %7, ptr noundef nonnull %rxbuf.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then17.i.error_ret.i_crit_edge, label %if.end22.i

if.then17.i.error_ret.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret.i

if.end22.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %4, align 1
  %conv24.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rxbuf.i, align 1
  %conv26.i = zext i8 %38 to i32
  %shl.i = shl nuw nsw i32 %conv26.i, 8
  %or.i = or i32 %shl.i, %conv24.i
  %39 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info.i, align 4
  %bits28.i = getelementptr inbounds %struct.max1363_chip_info, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %bits28.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bits28.i, align 1
  %conv29.i = zext i8 %42 to i32
  %notmask.i = shl nsw i32 -1, %conv29.i
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %or.i, %sub.i
  br label %if.end40.i

if.else.i:                                        ; preds = %if.end14.i
  %call33.i = call i32 %34(ptr noundef %7, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.else.i.error_ret.i_crit_edge, label %if.end37.i

if.else.i.error_ret.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret.i

if.end37.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rxbuf.i, align 1
  %conv39.i = zext i8 %44 to i32
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end37.i, %if.end22.i
  %data.0.i = phi i32 [ %and.i, %if.end22.i ], [ %conv39.i, %if.end37.i ]
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %data.0.i, ptr %val, align 4
  br label %error_ret.i

error_ret.i:                                      ; preds = %if.end40.i, %if.else.i.error_ret.i_crit_edge, %if.then17.i.error_ret.i_crit_edge, %if.then6.i.error_ret.i_crit_edge, %if.end.i.error_ret.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i.i, %if.then6.i.error_ret.i_crit_edge ], [ %ret.0.i, %if.end40.i ], [ -16, %if.end.i.error_ret.i_crit_edge ], [ %call18.i, %if.then17.i.error_ret.i_crit_edge ], [ %call33.i, %if.else.i.error_ret.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %max1363_read_single_chan.exit

max1363_read_single_chan.exit:                    ; preds = %error_ret.i, %sw.bb.max1363_read_single_chan.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %error_ret.i ], [ %call2.i, %sw.bb.max1363_read_single_chan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rxbuf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %call1. = select i1 %cmp, i32 %retval.0.i, i32 1
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vref_uv = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %vref_uv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vref_uv, align 4
  %div = udiv i32 %47, 1000
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div, ptr %val, align 4
  %chip_info = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip_info, align 4
  %bits = getelementptr inbounds %struct.max1363_chip_info, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bits, align 1
  %conv = zext i8 %52 to i32
  %53 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %max1363_read_single_chan.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb2 ], [ %call1., %max1363_read_single_chan.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %lock = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %mask_high = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 10
  %mask_low = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 11
  %.sink.in = select i1 %cmp, ptr %mask_low, ptr %mask_high
  %4 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %.sink = load i8, ptr %.sink.in, align 1
  %shl = shl nuw i32 1, %3
  %conv2 = zext i8 %.sink to i32
  %and3 = and i32 %shl, %conv2
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %and3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_write_event_config(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  %tx_buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %mask_low = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %mask_low to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mask_low, align 1
  %mask_high = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %mask_high to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask_high, align 2
  %or83 = or i8 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp6 = icmp eq i32 %state, 0
  %shl = shl nuw i32 1, %3
  br i1 %cmp, label %if.then5, label %if.else24

if.then5:                                         ; preds = %if.end
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = trunc i32 %shl to i8
  %9 = xor i8 %8, -1
  %conv11 = and i8 %5, %9
  %10 = ptrtoint ptr %mask_low to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11, ptr %mask_low, align 1
  br label %if.end47

if.else:                                          ; preds = %if.then5
  %conv13 = zext i8 %or83 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shl)
  %cmp.i = icmp slt i32 %shl, 4
  br i1 %cmp.i, label %__max1363_check_event_mask.exit, label %if.else.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp2.i = icmp ult i32 %3, 3
  br i1 %cmp2.i, label %if.then3.i, label %if.else8.i

if.then3.i:                                       ; preds = %if.else.i
  %and4.i = and i32 %conv13, 207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end17_crit_edge, label %if.then3.i.error_ret_crit_edge

if.then3.i.error_ret_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret

if.then3.i.if.end17_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else8.i:                                       ; preds = %if.else.i
  %and9.i = and i32 %conv13, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else8.i.if.end17_crit_edge, label %if.else8.i.error_ret_crit_edge

if.else8.i.error_ret_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret

if.else8.i.if.end17_crit_edge:                    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

__max1363_check_event_mask.exit:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %or83)
  %tobool.not.i = icmp ult i8 %or83, 16
  br i1 %tobool.not.i, label %__max1363_check_event_mask.exit.if.end17_crit_edge, label %__max1363_check_event_mask.exit.error_ret_crit_edge

__max1363_check_event_mask.exit.error_ret_crit_edge: ; preds = %__max1363_check_event_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret

__max1363_check_event_mask.exit.if.end17_crit_edge: ; preds = %__max1363_check_event_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %__max1363_check_event_mask.exit.if.end17_crit_edge, %if.else8.i.if.end17_crit_edge, %if.then3.i.if.end17_crit_edge
  %11 = trunc i32 %shl to i8
  %conv22 = or i8 %5, %11
  %12 = ptrtoint ptr %mask_low to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %mask_low, align 1
  br label %if.end47

if.else24:                                        ; preds = %if.end
  br i1 %cmp6, label %if.then27, label %if.else34

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  %13 = trunc i32 %shl to i8
  %14 = xor i8 %13, -1
  %conv33 = and i8 %7, %14
  %15 = ptrtoint ptr %mask_high to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv33, ptr %mask_high, align 2
  br label %if.end47

if.else34:                                        ; preds = %if.else24
  %conv36 = zext i8 %or83 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shl)
  %cmp.i85 = icmp slt i32 %shl, 4
  br i1 %cmp.i85, label %__max1363_check_event_mask.exit98, label %if.else.i89

if.else.i89:                                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp2.i88 = icmp ult i32 %3, 3
  br i1 %cmp2.i88, label %if.then3.i92, label %if.else8.i95

if.then3.i92:                                     ; preds = %if.else.i89
  %and4.i90 = and i32 %conv36, 207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i90)
  %tobool5.not.i91 = icmp eq i32 %and4.i90, 0
  br i1 %tobool5.not.i91, label %if.then3.i92.if.end40_crit_edge, label %if.then3.i92.error_ret_crit_edge

if.then3.i92.error_ret_crit_edge:                 ; preds = %if.then3.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret

if.then3.i92.if.end40_crit_edge:                  ; preds = %if.then3.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.else8.i95:                                     ; preds = %if.else.i89
  %and9.i93 = and i32 %conv36, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i93)
  %tobool10.not.i94 = icmp eq i32 %and9.i93, 0
  br i1 %tobool10.not.i94, label %if.else8.i95.if.end40_crit_edge, label %if.else8.i95.error_ret_crit_edge

if.else8.i95.error_ret_crit_edge:                 ; preds = %if.else8.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret

if.else8.i95.if.end40_crit_edge:                  ; preds = %if.else8.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

__max1363_check_event_mask.exit98:                ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %or83)
  %tobool.not.i86 = icmp ult i8 %or83, 16
  br i1 %tobool.not.i86, label %__max1363_check_event_mask.exit98.if.end40_crit_edge, label %__max1363_check_event_mask.exit98.error_ret_crit_edge

__max1363_check_event_mask.exit98.error_ret_crit_edge: ; preds = %__max1363_check_event_mask.exit98
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret

__max1363_check_event_mask.exit98.if.end40_crit_edge: ; preds = %__max1363_check_event_mask.exit98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end40:                                         ; preds = %__max1363_check_event_mask.exit98.if.end40_crit_edge, %if.else8.i95.if.end40_crit_edge, %if.then3.i92.if.end40_crit_edge
  %16 = trunc i32 %shl to i8
  %conv45 = or i8 %7, %16
  %17 = ptrtoint ptr %mask_high to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv45, ptr %mask_high, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.end40, %if.then27, %if.end17, %if.then8
  %18 = ptrtoint ptr %mask_high to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask_high, align 2
  %20 = ptrtoint ptr %mask_low to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mask_low, align 1
  %or5284 = or i8 %21, %19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or5284)
  %tobool53.not = icmp eq i8 %or5284, 0
  %setupbyte.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %setupbyte.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %setupbyte.i, align 4
  br i1 %tobool53.not, label %if.then.i100, label %if.end.i

if.then.i100:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %24 = and i8 %23, -2
  %25 = ptrtoint ptr %setupbyte.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %setupbyte.i, align 4
  %configbyte.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %configbyte.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %configbyte.i, align 1
  %28 = and i8 %27, -97
  store i8 %28, ptr %configbyte.i, align 1
  %monitor_on.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %monitor_on.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %monitor_on.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i) #9
  %30 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %24, ptr %tx_buf.i.i, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %28, ptr %30, align 1
  %send.i.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %send.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %send.i.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i.i = call i32 %34(ptr noundef %36, ptr noundef nonnull %tx_buf.i.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i) #9
  br label %error_ret

if.end.i:                                         ; preds = %if.end47
  %37 = or i8 %23, 1
  %38 = ptrtoint ptr %setupbyte.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %setupbyte.i, align 4
  %configbyte8.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %configbyte8.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %configbyte8.i, align 1
  %41 = and i8 %40, -128
  %or18.i = zext i8 %or5284 to i32
  %and19.i = and i32 %or18.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %and32.i = and i32 %or18.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %..i = select i1 %tobool33.not.i, i8 70, i8 68
  %.17.i = select i1 %tobool33.not.i, ptr getelementptr inbounds ([55 x %struct.max1363_mode], ptr @max1363_mode_table, i32 0, i32 48, i32 1), ptr getelementptr inbounds ([55 x %struct.max1363_mode], ptr @max1363_mode_table, i32 0, i32 41, i32 1)
  %.sink15.i = select i1 %tobool20.not.i, i8 %..i, i8 71
  %modemask.0.i = select i1 %tobool20.not.i, ptr %.17.i, ptr getelementptr inbounds ([55 x %struct.max1363_mode], ptr @max1363_mode_table, i32 0, i32 27, i32 1)
  %42 = or i8 %41, %.sink15.i
  %43 = ptrtoint ptr %configbyte8.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %configbyte8.i, align 1
  %44 = ptrtoint ptr %modemask.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %modemask.0.i, align 4
  %and3.i.i = and i32 %45, 33554431
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3.i.i) #9
  %mul.i = mul i32 %call.i.i.i.i, 3
  %add.i = add i32 %mul.i, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #12
  %tobool50.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool50.not.i, label %if.end.i.error_ret.i_crit_edge, label %if.end52.i

if.end.i.error_ret.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret.i

if.end52.i:                                       ; preds = %if.end.i
  %46 = ptrtoint ptr %configbyte8.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %configbyte8.i, align 1
  %48 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %call9.i.i, align 128
  %49 = ptrtoint ptr %setupbyte.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %setupbyte.i, align 4
  %arrayidx55.i = getelementptr i8, ptr %call9.i.i, i32 1
  %51 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx55.i, align 1
  %monitor_speed.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 9
  %52 = ptrtoint ptr %monitor_speed.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %monitor_speed.i, align 1
  %53 = lshr i8 %bf.load.i, 4
  %54 = and i8 %53, 14
  %arrayidx57.i = getelementptr i8, ptr %call9.i.i, i32 2
  %55 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx57.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end52.i
  %j.011.i = phi i32 [ 0, %if.end52.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ 3, %if.end52.i ], [ %i.1.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %j.011.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %modemask.0.i, i32 %div3.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i, align 4
  %58 = shl nuw i32 1, %j.011.i
  %59 = and i32 %57, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool60.not.i = icmp eq i32 %59, 0
  br i1 %tobool60.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then61.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then61.i:                                      ; preds = %for.body.i
  %60 = ptrtoint ptr %mask_low to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mask_low, align 1
  %conv63.i = zext i8 %61 to i32
  %and65.i = and i32 %58, %conv63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.else81.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx68.i = getelementptr %struct.max1363_state, ptr %1, i32 0, i32 13, i32 %j.011.i
  %62 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx68.i, align 2
  %64 = lshr i16 %63, 4
  %conv71.i = trunc i16 %64 to i8
  %arrayidx72.i = getelementptr i8, ptr %call9.i.i, i32 %i.08.i
  %65 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv71.i, ptr %arrayidx72.i, align 1
  %conv75.i = trunc i16 %63 to i8
  %shl76.i = shl i8 %conv75.i, 4
  br label %if.end93.i

if.else81.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.011.i)
  %cmp82.i = icmp ult i32 %j.011.i, 4
  %arrayidx85.i = getelementptr i8, ptr %call9.i.i, i32 %i.08.i
  br i1 %cmp82.i, label %if.then84.i, label %if.else88.i

if.then84.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx85.i, align 1
  br label %if.end93.i

if.else88.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -128, ptr %arrayidx85.i, align 1
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else88.i, %if.then84.i, %if.then67.i
  %.sink.i = phi i8 [ 0, %if.then84.i ], [ 0, %if.else88.i ], [ %shl76.i, %if.then67.i ]
  %add86.i = add i32 %i.08.i, 1
  %arrayidx87.i = getelementptr i8, ptr %call9.i.i, i32 %add86.i
  %68 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink.i, ptr %arrayidx87.i, align 1
  %69 = ptrtoint ptr %mask_high to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %mask_high, align 2
  %conv95.i = zext i8 %70 to i32
  %and97.i = and i32 %58, %conv95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.else116.i, label %if.then99.i

if.then99.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx100.i = getelementptr %struct.max1363_state, ptr %1, i32 0, i32 12, i32 %j.011.i
  %71 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx100.i, align 2
  %73 = lshr i16 %72, 8
  %74 = trunc i16 %73 to i8
  %and103.i = and i8 %74, 15
  %or107.i = or i8 %and103.i, %.sink.i
  %75 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or107.i, ptr %arrayidx87.i, align 1
  %76 = load i16, ptr %arrayidx100.i, align 2
  %conv113.i = trunc i16 %76 to i8
  br label %if.end136.i

if.else116.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.011.i)
  %cmp117.i = icmp ult i32 %j.011.i, 4
  br i1 %cmp117.i, label %if.then119.i, label %if.else127.i

if.then119.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = or i8 %.sink.i, 15
  %78 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx87.i, align 1
  br label %if.end136.i

if.else127.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = or i8 %.sink.i, 7
  %80 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx87.i, align 1
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.else127.i, %if.then119.i, %if.then99.i
  %.sink16.i = phi i8 [ -1, %if.then119.i ], [ -1, %if.else127.i ], [ %conv113.i, %if.then99.i ]
  %add125.i = add i32 %i.08.i, 2
  %arrayidx126.i = getelementptr i8, ptr %call9.i.i, i32 %add125.i
  %81 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %.sink16.i, ptr %arrayidx126.i, align 1
  %add137.i = add i32 %i.08.i, 3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end136.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %add137.i, %if.end136.i ], [ %i.08.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %j.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %send.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 16
  %82 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %send.i, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %call139.i = tail call i32 %83(ptr noundef %85, ptr noundef nonnull %call9.i.i, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call139.i)
  %cmp140.i = icmp sgt i32 %call139.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call139.i, i32 %add.i)
  %cmp144.not.i = icmp eq i32 %call139.i, %add.i
  %or.cond.i = and i1 %cmp140.i, %cmp144.not.i
  br i1 %or.cond.i, label %if.end147.i, label %for.end.i.error_ret.i_crit_edge

for.end.i.error_ret.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret.i

if.end147.i:                                      ; preds = %for.end.i
  %86 = ptrtoint ptr %setupbyte.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %setupbyte.i, align 4
  %88 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %call9.i.i, align 128
  %89 = ptrtoint ptr %monitor_speed.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load151.i = load i8, ptr %monitor_speed.i, align 1
  %90 = lshr i8 %bf.load151.i, 4
  %91 = or i8 %90, -15
  %92 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx55.i, align 1
  %93 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %send.i, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call161.i = tail call i32 %94(ptr noundef %96, ptr noundef nonnull %call9.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call161.i)
  %cmp166.not.i = icmp eq i32 %call161.i, 2
  br i1 %cmp166.not.i, label %if.end169.i, label %if.end147.i.error_ret.i_crit_edge

if.end147.i.error_ret.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_ret.i

if.end169.i:                                      ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  %monitor_on170.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 8
  %97 = ptrtoint ptr %monitor_on170.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %monitor_on170.i, align 4
  br label %error_ret.i

error_ret.i:                                      ; preds = %if.end169.i, %if.end147.i.error_ret.i_crit_edge, %for.end.i.error_ret.i_crit_edge, %if.end.i.error_ret.i_crit_edge
  %retval.1.i7.i = phi ptr [ null, %if.end.i.error_ret.i_crit_edge ], [ %call9.i.i, %if.end147.i.error_ret.i_crit_edge ], [ %call9.i.i, %for.end.i.error_ret.i_crit_edge ], [ %call9.i.i, %if.end169.i ]
  tail call void @kfree(ptr noundef %retval.1.i7.i) #9
  br label %error_ret

error_ret:                                        ; preds = %error_ret.i, %if.then.i100, %__max1363_check_event_mask.exit98.error_ret_crit_edge, %if.else8.i95.error_ret_crit_edge, %if.then3.i92.error_ret_crit_edge, %__max1363_check_event_mask.exit.error_ret_crit_edge, %if.else8.i.error_ret_crit_edge, %if.then3.i.error_ret_crit_edge
  %ret.1 = phi i32 [ -16, %__max1363_check_event_mask.exit.error_ret_crit_edge ], [ -16, %__max1363_check_event_mask.exit98.error_ret_crit_edge ], [ -16, %if.else8.i.error_ret_crit_edge ], [ -16, %if.then3.i.error_ret_crit_edge ], [ -16, %if.else8.i95.error_ret_crit_edge ], [ -16, %if.then3.i92.error_ret_crit_edge ], [ 0, %if.then.i100 ], [ 0, %error_ret.i ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

cleanup:                                          ; preds = %error_ret, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_ret ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max1363_read_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx2 = getelementptr %struct.max1363_state, ptr %1, i32 0, i32 12, i32 %3
  %arrayidx = getelementptr %struct.max1363_state, ptr %1, i32 0, i32 13, i32 %3
  %storemerge.in.in = select i1 %cmp, ptr %arrayidx, ptr %arrayidx2
  %4 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %storemerge.in = load i16, ptr %storemerge.in.in, align 2
  %storemerge = sext i16 %storemerge.in to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %val, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max1363_write_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_info = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %bits = getelementptr inbounds %struct.max1363_chip_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 10, label %sw.bb
    i8 12, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %val)
  %cmp = icmp sgt i32 %val, 1023
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %val)
  %cmp3 = icmp sgt i32 %val, 4095
  br i1 %cmp3, label %sw.bb2.cleanup_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %7 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %dir, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.bb7
    i32 1, label %sw.bb9
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = trunc i32 %val to i16
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.max1363_state, ptr %1, i32 0, i32 13, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv8, ptr %arrayidx, align 2
  br label %cleanup

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %conv10 = trunc i32 %val to i16
  %channel11 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %channel11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel11, align 4
  %arrayidx12 = getelementptr %struct.max1363_state, ptr %1, i32 0, i32 12, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv10, ptr %arrayidx12, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb7, %sw.epilog.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef readonly %scan_mask) #2 align 64 {
entry:
  %tx_buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_info = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %tobool.not.i = icmp eq ptr %scan_mask, null
  br i1 %tobool.not.i, label %entry.max1363_match_mode.exit.thread_crit_edge, label %for.cond.preheader.i

entry.max1363_match_mode.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %max1363_match_mode.exit.thread

for.cond.preheader.i:                             ; preds = %entry
  %num_modes.i = getelementptr inbounds %struct.max1363_chip_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_modes.i, align 2
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp15.not.i = icmp eq i8 %5, 0
  br i1 %cmp15.not.i, label %for.cond.preheader.i.max1363_match_mode.exit.thread_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.max1363_match_mode.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max1363_match_mode.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %mode_list.i = getelementptr inbounds %struct.max1363_chip_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mode_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_list.i, align 4
  %8 = ptrtoint ptr %scan_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_mask, align 4
  %and.i.i = and i32 %9, 33554431
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.max1363_match_mode.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.max1363_match_mode.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max1363_match_mode.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %7, i32 %i.016.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %modemask.i = getelementptr [55 x %struct.max1363_mode], ptr @max1363_mode_table, i32 0, i32 %11, i32 1
  %12 = ptrtoint ptr %modemask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %modemask.i, align 4
  %neg.i.i = xor i32 %13, -1
  %and4.i.i = and i32 %and.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i.not.i, label %max1363_match_mode.exit, label %for.cond.i

max1363_match_mode.exit.thread:                   ; preds = %for.cond.i.max1363_match_mode.exit.thread_crit_edge, %for.cond.preheader.i.max1363_match_mode.exit.thread_crit_edge, %entry.max1363_match_mode.exit.thread_crit_edge
  %current_mode8 = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %current_mode8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %current_mode8, align 4
  br label %cleanup

max1363_match_mode.exit:                          ; preds = %for.body.i
  %arrayidx7.i = getelementptr [55 x %struct.max1363_mode], ptr @max1363_mode_table, i32 0, i32 %11
  %current_mode = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx7.i, ptr %current_mode, align 4
  %tobool.not = icmp eq ptr %arrayidx7.i, null
  br i1 %tobool.not, label %max1363_match_mode.exit.cleanup_crit_edge, label %if.end

max1363_match_mode.exit.cleanup_crit_edge:        ; preds = %max1363_match_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %max1363_match_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  %configbyte.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %configbyte.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %configbyte.i, align 1
  %18 = and i8 %17, -128
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7.i, align 4
  %or.i = or i8 %20, %18
  store i8 %or.i, ptr %configbyte.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i) #9
  %21 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  %setupbyte.i.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %setupbyte.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %setupbyte.i.i, align 4
  %24 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %tx_buf.i.i, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or.i, ptr %21, align 1
  %send.i.i = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %send.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %send.i.i, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i.i = call i32 %27(ptr noundef %29, ptr noundef nonnull %tx_buf.i.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %max1363_match_mode.exit.cleanup_crit_edge, %max1363_match_mode.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %max1363_match_mode.exit.cleanup_crit_edge ], [ -22, %max1363_match_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_monitor_show_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %monitor_speed = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %monitor_speed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %monitor_speed, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.cast = zext i8 %bf.lshr to i32
  %arrayidx = getelementptr [8 x i32], ptr @max1363_monitor_speeds, i32 0, i32 %bf.cast
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1363_monitor_store_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !128
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %4, label %for.cond.preheader.cleanup_crit_edge [
    i32 133000, label %for.cond.preheader.if.end8_crit_edge
    i32 665000, label %if.end8.fold.split
    i32 33300, label %if.end8.fold.split23
    i32 16600, label %if.end8.fold.split24
    i32 8300, label %if.end8.fold.split25
    i32 4200, label %if.end8.fold.split26
    i32 2000, label %if.end8.fold.split27
    i32 1000, label %if.end8.fold.split28
  ]

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.fold.split:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8.fold.split23:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8.fold.split24:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8.fold.split25:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8.fold.split26:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8.fold.split27:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8.fold.split28:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.end8.fold.split28, %if.end8.fold.split27, %if.end8.fold.split26, %if.end8.fold.split25, %if.end8.fold.split24, %if.end8.fold.split23, %if.end8.fold.split, %for.cond.preheader.if.end8_crit_edge
  %i.021.lcssa = phi i8 [ 0, %for.cond.preheader.if.end8_crit_edge ], [ 32, %if.end8.fold.split ], [ 64, %if.end8.fold.split23 ], [ 96, %if.end8.fold.split24 ], [ -128, %if.end8.fold.split25 ], [ -96, %if.end8.fold.split26 ], [ -64, %if.end8.fold.split27 ], [ -32, %if.end8.fold.split28 ]
  %lock = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %monitor_speed = getelementptr inbounds %struct.max1363_state, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %monitor_speed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %monitor_speed, align 1
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.clear, %i.021.lcssa
  store i8 %bf.set, ptr %monitor_speed, align 1
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_max1363__288_1740_max1363_driver_init6, !1, !"__initcall__kmod_max1363__288_1740_max1363_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/max1363.c", i32 1740, i32 1}
!2 = !{ptr @__exitcall_max1363_driver_exit, !1, !"__exitcall_max1363_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/max1363.c", i32 1742, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/max1363.c", i32 1743, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/max1363.c", i32 1744, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/max1363.c", i32 1734, i32 11}
!12 = !{ptr @max1363_driver, !13, !"max1363_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/max1363.c", i32 1732, i32 26}
!14 = !{ptr @max1363_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/max1363.c", i32 1605, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/max1363.c", i32 1606, i32 45}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/max1363.c", i32 1624, i32 51}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/max1363.c", i32 1678, i32 9}
!23 = !{ptr @max1363_chip_info_tbl, !24, !"max1363_chip_info_tbl", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/max1363.c", i32 1056, i32 39}
!25 = !{ptr @max1363_info, !26, !"max1363_info", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/max1363.c", i32 1045, i32 30}
!27 = !{ptr @max1363_event_attribute_group, !28, !"max1363_event_attribute_group", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/max1363.c", i32 1020, i32 37}
!29 = !{ptr @max1363_event_attributes, !30, !"max1363_event_attributes", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/max1363.c", i32 1014, i32 26}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/max1363.c", i32 723, i32 8}
!33 = !{ptr @iio_dev_attr_sampling_frequency, !32, !"iio_dev_attr_sampling_frequency", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/max1363.c", i32 691, i32 22}
!36 = !{ptr @max1363_monitor_speeds, !37, !"max1363_monitor_speeds", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/max1363.c", i32 683, i32 18}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/max1363.c", i32 727, i32 8}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iio_const_attr_sampling_frequency_available, !39, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!42 = !{ptr @max1363_mode_table, !43, !"max1363_mode_table", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/max1363.c", i32 237, i32 34}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/max1363.c", i32 530, i32 2}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @max1361_channels, !54, !"max1361_channels", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/max1363.c", i32 529, i32 35}
!55 = !{ptr @max1363_events, !56, !"max1363_events", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/max1363.c", i32 454, i32 36}
!57 = !{ptr @max1363_mode_list, !58, !"max1363_mode_list", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/max1363.c", i32 447, i32 33}
!59 = !{ptr @max1363_channels, !60, !"max1363_channels", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/max1363.c", i32 531, i32 35}
!61 = !{ptr @max1238_info, !62, !"max1238_info", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/max1363.c", i32 1040, i32 30}
!63 = !{ptr @max1036_channels, !64, !"max1036_channels", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/max1363.c", i32 523, i32 35}
!65 = !{ptr @max1236_mode_list, !66, !"max1236_mode_list", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/max1363.c", i32 535, i32 33}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/max1363.c", i32 583, i32 56}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @max1038_channels, !85, !"max1038_channels", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/max1363.c", i32 583, i32 35}
!86 = !{ptr @max1238_mode_list, !87, !"max1238_mode_list", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/max1363.c", i32 544, i32 33}
!88 = !{ptr @max1136_channels, !89, !"max1136_channels", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/max1363.c", i32 525, i32 35}
!90 = !{ptr @max1138_channels, !91, !"max1138_channels", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/max1363.c", i32 584, i32 35}
!92 = !{ptr @max1236_channels, !93, !"max1236_channels", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/max1363.c", i32 527, i32 35}
!94 = !{ptr @max1238_channels, !95, !"max1238_channels", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/max1363.c", i32 585, i32 35}
!96 = !{ptr @max11607_mode_list, !97, !"max11607_mode_list", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/max1363.c", i32 587, i32 33}
!98 = !{ptr @max11602_channels, !99, !"max11602_channels", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/max1363.c", i32 624, i32 35}
!100 = !{ptr @max11608_mode_list, !101, !"max11608_mode_list", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/max1363.c", i32 595, i32 33}
!102 = !{ptr @max11608_channels, !103, !"max11608_channels", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/max1363.c", i32 625, i32 35}
!104 = !{ptr @max11614_channels, !105, !"max11614_channels", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/max1363.c", i32 626, i32 35}
!106 = !{ptr @max11644_channels, !107, !"max11644_channels", i1 false, i1 false}
!107 = !{!"../drivers/iio/adc/max1363.c", i32 641, i32 35}
!108 = !{ptr @max11644_mode_list, !109, !"max11644_mode_list", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/max1363.c", i32 628, i32 33}
!110 = !{ptr @max11646_channels, !111, !"max11646_channels", i1 false, i1 false}
!111 = !{!"../drivers/iio/adc/max1363.c", i32 640, i32 35}
!112 = !{ptr @max1363_event_codes, !113, !"max1363_event_codes", i1 false, i1 false}
!113 = !{!"../drivers/iio/adc/max1363.c", i32 775, i32 18}
!114 = !{ptr @max1363_of_match, !115, !"max1363_of_match", i1 false, i1 false}
!115 = !{!"../drivers/iio/adc/max1363.c", i32 1537, i32 34}
!116 = !{ptr @max1363_id, !117, !"max1363_id", i1 false, i1 false}
!117 = !{!"../drivers/iio/adc/max1363.c", i32 1688, i32 35}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i8 0, i8 2}
!128 = !{!"auto-init"}
