; ModuleID = '/llk/IR_all_yes/drivers/iio/light/tsl2772.c_pt.bc'
source_filename = "../drivers/iio/light/tsl2772.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tsl2772_chip_info = type { i32, [4 x %struct.iio_chan_spec], [4 x %struct.iio_chan_spec], ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.tsl2772_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.tsl2772_lux = type { i32, i32 }
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
%struct.tsl2772_chip = type { i32, %struct.mutex, %struct.mutex, ptr, [2 x %struct.regulator_bulk_data], i16, %struct.tsl2772_als_info, %struct.tsl2772_settings, ptr, i32, i32, i32, [16 x i8], ptr, ptr, i64, [6 x %struct.tsl2772_lux] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.tsl2772_als_info = type { i16, i16, i16 }
%struct.tsl2772_platform_data = type { [6 x %struct.tsl2772_lux], ptr }

@__initcall__kmod_tsl2772__292_1942_tsl2772_driver_init6 = internal global ptr @tsl2772_driver_init, section ".initcall6.init", align 4
@tsl2772_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tsl2772_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsl2772_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsl2772_pm_ops, ptr null, ptr null }, ptr @tsl2772_idtable, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tsl2772_driver_exit = internal global ptr @tsl2772_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [55 x i8] c"tsl2772.author=J. August Brenner <Jon.Brenner@ams.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"tsl2772.author=Brian Masney <masneyb@onstation.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [75 x i8] c"tsl2772.description=TAOS tsl2772 ambient and proximity light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [39 x i8] c"tsl2772.file=drivers/iio/light/tsl2772\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"tsl2772.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsl2772\00", [24 x i8] zeroinitializer }, align 32
@tsl2772_of_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2571\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2671\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tmd2671\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2771\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tmd2771\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2572\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2672\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tmd2672\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tsl2772\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amstaos,tmd2772\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"avago,apds9930\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@tsl2772_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tsl2772_suspend, ptr @tsl2772_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tsl2772_idtable = internal constant { [12 x %struct.i2c_device_id], [64 x i8] } { [12 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tsl2571\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tsl2671\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tmd2671\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tsl2771\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"tmd2771\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"tsl2572\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"tsl2672\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"tmd2672\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"tsl2772\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"tmd2772\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"apds9930\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@tsl2772_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1785, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsl2772_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/tsl2772.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsl2772_probe._entry_ptr = internal global ptr @tsl2772_probe._entry, section ".printk_index", align 4
@tsl2772_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1794, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to setup regulator cleanup action %d\0A\00", [51 x i8] zeroinitializer }, align 32
@tsl2772_probe._entry_ptr.11 = internal global ptr @tsl2772_probe._entry.9, section ".printk_index", align 4
@tsl2772_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1808, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: i2c device found does not match expected id\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsl2772_probe._entry_ptr.15 = internal global ptr @tsl2772_probe._entry.12, section ".printk_index", align 4
@tsl2772_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1816, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Failed to write to CMD register: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tsl2772_probe._entry_ptr.18 = internal global ptr @tsl2772_probe._entry.16, section ".printk_index", align 4
@tsl2772_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip->als_mutex\00", [47 x i8] zeroinitializer }, align 32
@tsl2772_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->prox_mutex\00", [46 x i8] zeroinitializer }, align 32
@tsl2772_chip_info_tbl = internal constant { [5 x %struct.tsl2772_chip_info], [888 x i8] } { [5 x %struct.tsl2772_chip_info] [%struct.tsl2772_chip_info { i32 3, [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262193, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tsl2772_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec zeroinitializer], [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262193, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec zeroinitializer], ptr @tsl2772_device_info }, %struct.tsl2772_chip_info { i32 1, [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tsl2772_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], ptr getelementptr (i8, ptr @tsl2772_device_info, i64 72) }, %struct.tsl2772_chip_info { i32 4, [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262193, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tsl2772_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tsl2772_events, i32 3, ptr null, ptr null, ptr null, i8 64 }], [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262193, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], ptr getelementptr (i8, ptr @tsl2772_device_info, i64 144) }, %struct.tsl2772_chip_info { i32 1, [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 17, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tsl2772_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 17, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec zeroinitializer], ptr getelementptr (i8, ptr @tsl2772_device_info, i64 216) }, %struct.tsl2772_chip_info { i32 4, [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262193, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tsl2772_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 17, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tsl2772_events, i32 3, ptr null, ptr null, ptr null, i8 64 }], [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262193, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 17, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], ptr getelementptr (i8, ptr @tsl2772_device_info, i64 288) }], [888 x i8] zeroinitializer }, align 32
@device_channel_config = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\01\01\02\02\00\03\03\04\04\04", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TSL2772_event\00", [18 x i8] zeroinitializer }, align 32
@tsl2772_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 1846, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: irq request failed\0A\00", [40 x i8] zeroinitializer }, align 32
@tsl2772_probe._entry_ptr.25 = internal global ptr @tsl2772_probe._entry.23, section ".printk_index", align 4
@tsl2772_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 9, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@tsl2772_device_info = internal constant { [5 x %struct.iio_info], [88 x i8] } { [5 x %struct.iio_info] [%struct.iio_info { ptr null, ptr @tsl2772_device_attr_group_tbl, ptr @tsl2772_read_raw, ptr null, ptr @tsl2772_read_avail, ptr @tsl2772_write_raw, ptr null, ptr null, ptr @tsl2772_read_interrupt_config, ptr @tsl2772_write_interrupt_config, ptr @tsl2772_read_event_value, ptr @tsl2772_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.iio_info { ptr null, ptr getelementptr (i8, ptr @tsl2772_device_attr_group_tbl, i64 20), ptr @tsl2772_read_raw, ptr null, ptr @tsl2772_read_avail, ptr @tsl2772_write_raw, ptr null, ptr null, ptr @tsl2772_read_interrupt_config, ptr @tsl2772_write_interrupt_config, ptr @tsl2772_read_event_value, ptr @tsl2772_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.iio_info { ptr null, ptr getelementptr (i8, ptr @tsl2772_device_attr_group_tbl, i64 40), ptr @tsl2772_read_raw, ptr null, ptr @tsl2772_read_avail, ptr @tsl2772_write_raw, ptr null, ptr null, ptr @tsl2772_read_interrupt_config, ptr @tsl2772_write_interrupt_config, ptr @tsl2772_read_event_value, ptr @tsl2772_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.iio_info { ptr null, ptr getelementptr (i8, ptr @tsl2772_device_attr_group_tbl, i64 60), ptr @tsl2772_read_raw, ptr null, ptr @tsl2772_read_avail, ptr @tsl2772_write_raw, ptr null, ptr null, ptr @tsl2772_read_interrupt_config, ptr @tsl2772_write_interrupt_config, ptr @tsl2772_read_event_value, ptr @tsl2772_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.iio_info { ptr null, ptr getelementptr (i8, ptr @tsl2772_device_attr_group_tbl, i64 80), ptr @tsl2772_read_raw, ptr null, ptr @tsl2772_read_avail, ptr @tsl2772_write_raw, ptr null, ptr null, ptr @tsl2772_read_interrupt_config, ptr @tsl2772_write_interrupt_config, ptr @tsl2772_read_event_value, ptr @tsl2772_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [88 x i8] zeroinitializer }, align 32
@tsl2772_device_attr_group_tbl = internal constant { [5 x %struct.attribute_group], [60 x i8] } { [5 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @tsl2772_ALS_device_attrs, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tsl2772_PRX_device_attrs, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tsl2772_ALSPRX_device_attrs, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tsl2772_PRX2_device_attrs, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tsl2772_ALSPRX2_device_attrs, ptr null }], [60 x i8] zeroinitializer }, align 32
@tsl2772_ALS_device_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_in_illuminance0_target_input, ptr @dev_attr_in_illuminance0_calibrate, ptr @dev_attr_in_illuminance0_lux_table, ptr null], [16 x i8] zeroinitializer }, align 32
@tsl2772_PRX_device_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_in_proximity0_calibrate, ptr null], [24 x i8] zeroinitializer }, align 32
@tsl2772_ALSPRX_device_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_in_illuminance0_target_input, ptr @dev_attr_in_illuminance0_calibrate, ptr @dev_attr_in_illuminance0_lux_table, ptr null], [16 x i8] zeroinitializer }, align 32
@tsl2772_PRX2_device_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_in_proximity0_calibrate, ptr null], [24 x i8] zeroinitializer }, align 32
@tsl2772_ALSPRX2_device_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_in_illuminance0_target_input, ptr @dev_attr_in_illuminance0_calibrate, ptr @dev_attr_in_illuminance0_lux_table, ptr @dev_attr_in_proximity0_calibrate, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_in_illuminance0_target_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_illuminance0_target_input_show, ptr @in_illuminance0_target_input_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in_illuminance0_calibrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @in_illuminance0_calibrate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in_illuminance0_lux_table = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_illuminance0_lux_table_show, ptr @in_illuminance0_lux_table_store }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_illuminance0_target_input\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@tsl2772_write_control_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 343, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: failed to write to control register %x: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tsl2772_write_control_reg\00", [38 x i8] zeroinitializer }, align 32
@tsl2772_write_control_reg._entry_ptr = internal global ptr @tsl2772_write_control_reg._entry, section ".printk_index", align 4
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_illuminance0_calibrate\00", [38 x i8] zeroinitializer }, align 32
@tsl2772_als_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 665, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: failed to read from the CNTRL register\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tsl2772_als_calibrate\00", [42 x i8] zeroinitializer }, align 32
@tsl2772_als_calibrate._entry_ptr = internal global ptr @tsl2772_als_calibrate._entry, section ".printk_index", align 4
@tsl2772_als_calibrate._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.6, i32 673, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Device is not powered on and/or ADC is not enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@tsl2772_als_calibrate._entry_ptr.35 = internal global ptr @tsl2772_als_calibrate._entry.33, section ".printk_index", align 4
@tsl2772_als_calibrate._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.6, i32 678, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: The two ADC channels have not completed an integration cycle\0A\00", [62 x i8] zeroinitializer }, align 32
@tsl2772_als_calibrate._entry_ptr.38 = internal global ptr @tsl2772_als_calibrate._entry.36, section ".printk_index", align 4
@tsl2772_als_calibrate._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.6, i32 685, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: failed to get lux\0A\00", [41 x i8] zeroinitializer }, align 32
@tsl2772_als_calibrate._entry_ptr.41 = internal global ptr @tsl2772_als_calibrate._entry.39, section ".printk_index", align 4
@tsl2772_get_lux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: device is not enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tsl2772_get_lux\00", [16 x i8] zeroinitializer }, align 32
@tsl2772_get_lux._entry_ptr = internal global ptr @tsl2772_get_lux._entry, section ".printk_index", align 4
@tsl2772_get_lux._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 431, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: data not valid yet\0A\00", [40 x i8] zeroinitializer }, align 32
@tsl2772_get_lux._entry_ptr.46 = internal global ptr @tsl2772_get_lux._entry.44, section ".printk_index", align 4
@tsl2772_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 329, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed to read STATUS register: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsl2772_read_status\00", [44 x i8] zeroinitializer }, align 32
@tsl2772_read_status._entry_ptr = internal global ptr @tsl2772_read_status._entry, section ".printk_index", align 4
@tsl2772_read_autoinc_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.6, i32 361, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: failed to enable auto increment protocol: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tsl2772_read_autoinc_regs\00", [38 x i8] zeroinitializer }, align 32
@tsl2772_read_autoinc_regs._entry_ptr = internal global ptr @tsl2772_read_autoinc_regs._entry, section ".printk_index", align 4
@tsl2772_read_autoinc_regs._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.6, i32 370, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to read from register %x: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tsl2772_read_autoinc_regs._entry_ptr.53 = internal global ptr @tsl2772_read_autoinc_regs._entry.51, section ".printk_index", align 4
@tsl2772_read_autoinc_regs._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.6, i32 380, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@tsl2772_read_autoinc_regs._entry_ptr.55 = internal global ptr @tsl2772_read_autoinc_regs._entry.54, section ".printk_index", align 4
@tsl2772_read_autoinc_regs._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.6, i32 391, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: failed to enable repeated byte protocol: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@tsl2772_read_autoinc_regs._entry_ptr.58 = internal global ptr @tsl2772_read_autoinc_regs._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_illuminance0_lux_table\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u,%u,\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dev_attr_in_proximity0_calibrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @in_proximity0_calibrate_store }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"in_proximity0_calibrate\00", [40 x i8] zeroinitializer }, align 32
@tsl2772_als_gain = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 8, i16 16, i16 120], [24 x i8] zeroinitializer }, align 32
@tsl2772_prox_gain = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 2, i16 4, i16 8], [24 x i8] zeroinitializer }, align 32
@tsl2772_int_time_avail = internal constant { [11 x [6 x i32]], [88 x i8] } { [11 x [6 x i32]] [[6 x i32] [i32 0, i32 2720, i32 0, i32 2720, i32 0, i32 696000], [6 x i32] [i32 0, i32 2720, i32 0, i32 2720, i32 0, i32 696000], [6 x i32] [i32 0, i32 2720, i32 0, i32 2720, i32 0, i32 696000], [6 x i32] [i32 0, i32 2720, i32 0, i32 2720, i32 0, i32 696000], [6 x i32] [i32 0, i32 2720, i32 0, i32 2720, i32 0, i32 696000], [6 x i32] [i32 0, i32 2730, i32 0, i32 2730, i32 0, i32 699000], [6 x i32] [i32 0, i32 2730, i32 0, i32 2730, i32 0, i32 699000], [6 x i32] [i32 0, i32 2730, i32 0, i32 2730, i32 0, i32 699000], [6 x i32] [i32 0, i32 2730, i32 0, i32 2730, i32 0, i32 699000], [6 x i32] [i32 0, i32 2730, i32 0, i32 2730, i32 0, i32 699000], [6 x i32] [i32 0, i32 2730, i32 0, i32 2730, i32 0, i32 699000]], [88 x i8] zeroinitializer }, align 32
@tsl2772_int_calibscale_avail = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 16, i32 120], [16 x i8] zeroinitializer }, align 32
@tsl2772_prox_calibscale_avail = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@tsl2772_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.6, i32 1423, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: failed to clear interrupt status: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tsl2772_event_handler\00", [42 x i8] zeroinitializer }, align 32
@tsl2772_event_handler._entry_ptr = internal global ptr @tsl2772_event_handler._entry, section ".printk_index", align 4
@tsl2772_default_settings = internal constant { %struct.tsl2772_settings, [56 x i8] } { %struct.tsl2772_settings { i32 255, i32 0, i32 1000, i32 255, i32 255, i32 0, i32 0, i32 150, i8 1, i8 0, i32 200, i32 256, i8 1, i8 0, i32 0, i32 512, i32 8, i32 30, i32 2, i32 0 }, [56 x i8] zeroinitializer }, align 32
@tsl2772_default_lux_table_group = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @tsl2x71_lux_table, ptr @tsl2x71_lux_table, ptr @tmd2x71_lux_table, ptr @tsl2x71_lux_table, ptr @tmd2x71_lux_table, ptr @tsl2x72_lux_table, ptr @tsl2x72_lux_table, ptr @tmd2x72_lux_table, ptr @tsl2x72_lux_table, ptr @tmd2x72_lux_table, ptr @apds9930_lux_table], [52 x i8] zeroinitializer }, align 32
@tsl2x71_lux_table = internal constant { [3 x %struct.tsl2772_lux], [40 x i8] } { [3 x %struct.tsl2772_lux] [%struct.tsl2772_lux { i32 53000, i32 106000 }, %struct.tsl2772_lux { i32 31800, i32 53000 }, %struct.tsl2772_lux zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tmd2x71_lux_table = internal constant { [3 x %struct.tsl2772_lux], [40 x i8] } { [3 x %struct.tsl2772_lux] [%struct.tsl2772_lux { i32 24000, i32 48000 }, %struct.tsl2772_lux { i32 14400, i32 24000 }, %struct.tsl2772_lux zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tsl2x72_lux_table = internal constant { [3 x %struct.tsl2772_lux], [40 x i8] } { [3 x %struct.tsl2772_lux] [%struct.tsl2772_lux { i32 60000, i32 112200 }, %struct.tsl2772_lux { i32 37800, i32 60000 }, %struct.tsl2772_lux zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tmd2x72_lux_table = internal constant { [3 x %struct.tsl2772_lux], [40 x i8] } { [3 x %struct.tsl2772_lux] [%struct.tsl2772_lux { i32 20000, i32 35000 }, %struct.tsl2772_lux { i32 12600, i32 20000 }, %struct.tsl2772_lux zeroinitializer], [40 x i8] zeroinitializer }, align 32
@apds9930_lux_table = internal constant { [3 x %struct.tsl2772_lux], [40 x i8] } { [3 x %struct.tsl2772_lux] [%struct.tsl2772_lux { i32 52000, i32 96824 }, %struct.tsl2772_lux { i32 38792, i32 67132 }, %struct.tsl2772_lux zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@tsl2772_led_currents = internal constant { [5 x [2 x i32]], [56 x i8] } { [5 x [2 x i32]] [[2 x i32] [i32 100000, i32 0], [2 x i32] [i32 50000, i32 1], [2 x i32] [i32 25000, i32 2], [2 x i32] [i32 13000, i32 3], [2 x i32] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tsl2772_read_prox_led_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.6, i32 567, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid value %d for led-max-microamp\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tsl2772_read_prox_led_current\00", [34 x i8] zeroinitializer }, align 32
@tsl2772_read_prox_led_current._entry_ptr = internal global ptr @tsl2772_read_prox_led_current._entry, section ".printk_index", align 4
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amstaos,proximity-diodes\00", [39 x i8] zeroinitializer }, align 32
@tsl2772_read_prox_diodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.6, i32 592, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid value for amstaos,proximity-diodes: %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tsl2772_read_prox_diodes\00", [39 x i8] zeroinitializer }, align 32
@tsl2772_read_prox_diodes._entry_ptr = internal global ptr @tsl2772_read_prox_diodes._entry, section ".printk_index", align 4
@tsl2772_read_prox_diodes._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.6, i32 605, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid value %d in amstaos,proximity-diodes.\0A\00", [49 x i8] zeroinitializer }, align 32
@tsl2772_read_prox_diodes._entry_ptr.73 = internal global ptr @tsl2772_read_prox_diodes._entry.71, section ".printk_index", align 4
@tsl2772_chip_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.6, i32 747, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device is already enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tsl2772_chip_on\00", [16 x i8] zeroinitializer }, align 32
@tsl2772_chip_on._entry_ptr = internal global ptr @tsl2772_chip_on._entry, section ".printk_index", align 4
@tsl2772_chip_on._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.6, i32 786, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed to write to register %x: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tsl2772_chip_on._entry_ptr.78 = internal global ptr @tsl2772_chip_on._entry.76, section ".printk_index", align 4
@tsl2772_chip_on._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.75, ptr @.str.6, i32 811, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@tsl2772_chip_on._entry_ptr.80 = internal global ptr @tsl2772_chip_on._entry.79, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 13000, i64 25000, i64 50000, i64 100000]
@__sancov_gen_cov_switch_values.82 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 5, i64 18]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 18]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 16, i64 120]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"tsl2772_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1932, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1934, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"tsl2772_of_match\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1911, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"tsl2772_pm_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1927, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"tsl2772_idtable\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1894, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1773, i32 46 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1774, i32 48 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1780, i32 44 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1784, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1793, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1806, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1814, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1820, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1821, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"tsl2772_chip_info_tbl\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1515, i32 39 }
@___asan_gen_.173 = private unnamed_addr constant [22 x i8] c"device_channel_config\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 306, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1842, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1845, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"tsl2772_events\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1498, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"tsl2772_device_info\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1490, i32 30 }
@___asan_gen_.191 = private unnamed_addr constant [30 x i8] c"tsl2772_device_attr_group_tbl\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1460, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"tsl2772_ALS_device_attrs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1428, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"tsl2772_PRX_device_attrs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1435, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"tsl2772_ALSPRX_device_attrs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1440, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant [26 x i8] c"tsl2772_PRX2_device_attrs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1447, i32 26 }
@___asan_gen_.206 = private unnamed_addr constant [29 x i8] c"tsl2772_ALSPRX2_device_attrs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1452, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant [38 x i8] c"dev_attr_in_illuminance0_target_input\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [35 x i8] c"dev_attr_in_illuminance0_calibrate\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [35 x i8] c"dev_attr_in_illuminance0_lux_table\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1356, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 935, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 341, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1358, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 663, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 671, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 676, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 684, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 419, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 430, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 327, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 359, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 368, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 378, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 389, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1362, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 989, i32 57 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1003, i32 56 }
@___asan_gen_.320 = private unnamed_addr constant [33 x i8] c"dev_attr_in_proximity0_calibrate\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1360, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"tsl2772_als_gain\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 265, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant [18 x i8] c"tsl2772_prox_gain\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 272, i32 18 }
@___asan_gen_.332 = private unnamed_addr constant [23 x i8] c"tsl2772_int_time_avail\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 279, i32 18 }
@___asan_gen_.335 = private unnamed_addr constant [29 x i8] c"tsl2772_int_calibscale_avail\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 293, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant [30 x i8] c"tsl2772_prox_calibscale_avail\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 295, i32 12 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 1421, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [25 x i8] c"tsl2772_default_settings\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 242, i32 38 }
@___asan_gen_.353 = private unnamed_addr constant [32 x i8] c"tsl2772_default_lux_table_group\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 228, i32 34 }
@___asan_gen_.356 = private unnamed_addr constant [18 x i8] c"tsl2x71_lux_table\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 198, i32 33 }
@___asan_gen_.359 = private unnamed_addr constant [18 x i8] c"tmd2x71_lux_table\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 204, i32 33 }
@___asan_gen_.362 = private unnamed_addr constant [18 x i8] c"tsl2x72_lux_table\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 210, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant [18 x i8] c"tmd2x72_lux_table\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 216, i32 33 }
@___asan_gen_.368 = private unnamed_addr constant [19 x i8] c"apds9930_lux_table\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 222, i32 33 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 555, i32 38 }
@___asan_gen_.374 = private unnamed_addr constant [21 x i8] c"tsl2772_led_currents\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 157, i32 18 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 566, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 579, i32 45 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 590, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 603, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 747, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 784, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.420 = private constant [31 x i8] c"../drivers/iio/light/tsl2772.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 809, i32 3 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_tsl2772_driver_exit, ptr @__initcall__kmod_tsl2772__292_1942_tsl2772_driver_init6, ptr @tsl2772_als_calibrate._entry, ptr @tsl2772_als_calibrate._entry.33, ptr @tsl2772_als_calibrate._entry.36, ptr @tsl2772_als_calibrate._entry.39, ptr @tsl2772_als_calibrate._entry_ptr, ptr @tsl2772_als_calibrate._entry_ptr.35, ptr @tsl2772_als_calibrate._entry_ptr.38, ptr @tsl2772_als_calibrate._entry_ptr.41, ptr @tsl2772_chip_on._entry, ptr @tsl2772_chip_on._entry.76, ptr @tsl2772_chip_on._entry.79, ptr @tsl2772_chip_on._entry_ptr, ptr @tsl2772_chip_on._entry_ptr.78, ptr @tsl2772_chip_on._entry_ptr.80, ptr @tsl2772_driver_exit, ptr @tsl2772_event_handler._entry, ptr @tsl2772_event_handler._entry_ptr, ptr @tsl2772_get_lux._entry, ptr @tsl2772_get_lux._entry.44, ptr @tsl2772_get_lux._entry_ptr, ptr @tsl2772_get_lux._entry_ptr.46, ptr @tsl2772_probe._entry, ptr @tsl2772_probe._entry.12, ptr @tsl2772_probe._entry.16, ptr @tsl2772_probe._entry.23, ptr @tsl2772_probe._entry.9, ptr @tsl2772_probe._entry_ptr, ptr @tsl2772_probe._entry_ptr.11, ptr @tsl2772_probe._entry_ptr.15, ptr @tsl2772_probe._entry_ptr.18, ptr @tsl2772_probe._entry_ptr.25, ptr @tsl2772_read_autoinc_regs._entry, ptr @tsl2772_read_autoinc_regs._entry.51, ptr @tsl2772_read_autoinc_regs._entry.54, ptr @tsl2772_read_autoinc_regs._entry.56, ptr @tsl2772_read_autoinc_regs._entry_ptr, ptr @tsl2772_read_autoinc_regs._entry_ptr.53, ptr @tsl2772_read_autoinc_regs._entry_ptr.55, ptr @tsl2772_read_autoinc_regs._entry_ptr.58, ptr @tsl2772_read_prox_diodes._entry, ptr @tsl2772_read_prox_diodes._entry.71, ptr @tsl2772_read_prox_diodes._entry_ptr, ptr @tsl2772_read_prox_diodes._entry_ptr.73, ptr @tsl2772_read_prox_led_current._entry, ptr @tsl2772_read_prox_led_current._entry_ptr, ptr @tsl2772_read_status._entry, ptr @tsl2772_read_status._entry_ptr, ptr @tsl2772_write_control_reg._entry, ptr @tsl2772_write_control_reg._entry_ptr, ptr @tsl2772_driver, ptr @.str, ptr @tsl2772_of_match, ptr @tsl2772_pm_ops, ptr @tsl2772_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @tsl2772_probe.__key, ptr @.str.19, ptr @tsl2772_probe.__key.20, ptr @.str.21, ptr @tsl2772_chip_info_tbl, ptr @device_channel_config, ptr @.str.22, ptr @.str.24, ptr @tsl2772_events, ptr @tsl2772_device_info, ptr @tsl2772_device_attr_group_tbl, ptr @tsl2772_ALS_device_attrs, ptr @tsl2772_PRX_device_attrs, ptr @tsl2772_ALSPRX_device_attrs, ptr @tsl2772_PRX2_device_attrs, ptr @tsl2772_ALSPRX2_device_attrs, ptr @dev_attr_in_illuminance0_target_input, ptr @dev_attr_in_illuminance0_calibrate, ptr @dev_attr_in_illuminance0_lux_table, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @dev_attr_in_proximity0_calibrate, ptr @.str.62, ptr @tsl2772_als_gain, ptr @tsl2772_prox_gain, ptr @tsl2772_int_time_avail, ptr @tsl2772_int_calibscale_avail, ptr @tsl2772_prox_calibscale_avail, ptr @.str.63, ptr @.str.64, ptr @tsl2772_default_settings, ptr @tsl2772_default_lux_table_group, ptr @tsl2x71_lux_table, ptr @tmd2x71_lux_table, ptr @tsl2x72_lux_table, ptr @tmd2x72_lux_table, ptr @apds9930_lux_table, ptr @.str.65, ptr @tsl2772_led_currents, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_of_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_idtable to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_chip_info_tbl to i32), i32 3560, i32 4448, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_channel_config to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_device_info to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_device_attr_group_tbl to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_ALS_device_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_PRX_device_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_ALSPRX_device_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_PRX2_device_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_ALSPRX2_device_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_illuminance0_target_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_illuminance0_calibrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_illuminance0_lux_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_write_control_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_als_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_als_calibrate._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_als_calibrate._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_als_calibrate._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_get_lux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_get_lux._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_read_autoinc_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_read_autoinc_regs._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_read_autoinc_regs._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_read_autoinc_regs._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_proximity0_calibrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_als_gain to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_prox_gain to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_int_time_avail to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_int_calibscale_avail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_prox_calibscale_avail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_default_settings to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_default_lux_table_group to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2x71_lux_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmd2x71_lux_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2x72_lux_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmd2x72_lux_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9930_lux_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_led_currents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_read_prox_led_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_read_prox_diodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_read_prox_diodes._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_chip_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_chip_on._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsl2772_chip_on._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tsl2772_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsl2772_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tsl2772_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_probe(ptr noundef %clientp, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %leds.i.i.i = alloca [2 x i32], align 4
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %clientp, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 392) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %clientp, ptr %client, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %clientp, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %supplies, align 8
  %arrayidx3 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %arrayidx3, align 4
  %call7 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call7, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call14 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call14) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tsl2772_disable_regulators_action, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end18.if.end27_crit_edge, label %devm_add_action_or_reset.exit

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

devm_add_action_or_reset.exit:                    ; preds = %if.end18
  %call.i174 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %do.end25, label %devm_add_action_or_reset.exit.if.end27_crit_edge

devm_add_action_or_reset.exit.if.end27_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end25:                                         ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i) #11
  br label %cleanup

if.end27:                                         ; preds = %devm_add_action_or_reset.exit.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 28000, i32 noundef 2) #8
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %call29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext -110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end32.do.end38_crit_edge [
    i32 0, label %if.end32.tsl2772_device_id_verif.exit_crit_edge
    i32 1, label %if.end32.tsl2772_device_id_verif.exit_crit_edge187
    i32 3, label %if.end32.tsl2772_device_id_verif.exit_crit_edge188
    i32 2, label %if.end32.sw.bb1.i_crit_edge
    i32 4, label %if.end32.sw.bb1.i_crit_edge189
    i32 5, label %if.end32.sw.bb5.i_crit_edge
    i32 6, label %if.end32.sw.bb5.i_crit_edge190
    i32 7, label %if.end32.sw.bb5.i_crit_edge191
    i32 8, label %if.end32.sw.bb5.i_crit_edge192
    i32 9, label %if.end32.sw.bb5.i_crit_edge193
    i32 10, label %if.end32.sw.bb5.i_crit_edge194
  ]

if.end32.sw.bb5.i_crit_edge194:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.end32.sw.bb5.i_crit_edge193:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.end32.sw.bb5.i_crit_edge192:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.end32.sw.bb5.i_crit_edge191:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.end32.sw.bb5.i_crit_edge190:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.end32.sw.bb5.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.end32.sw.bb1.i_crit_edge189:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end32.sw.bb1.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end32.tsl2772_device_id_verif.exit_crit_edge188: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_device_id_verif.exit

if.end32.tsl2772_device_id_verif.exit_crit_edge187: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_device_id_verif.exit

if.end32.tsl2772_device_id_verif.exit_crit_edge:  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_device_id_verif.exit

if.end32.do.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

sw.bb1.i:                                         ; preds = %if.end32.sw.bb1.i_crit_edge, %if.end32.sw.bb1.i_crit_edge189
  %and2.i = and i32 %call29, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and2.i)
  %cmp3.i = icmp eq i32 %and2.i, 32
  br i1 %cmp3.i, label %sw.bb1.i.if.end41_crit_edge, label %sw.bb1.i.do.end38_crit_edge

sw.bb1.i.do.end38_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

sw.bb1.i.if.end41_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

sw.bb5.i:                                         ; preds = %if.end32.sw.bb5.i_crit_edge, %if.end32.sw.bb5.i_crit_edge190, %if.end32.sw.bb5.i_crit_edge191, %if.end32.sw.bb5.i_crit_edge192, %if.end32.sw.bb5.i_crit_edge193, %if.end32.sw.bb5.i_crit_edge194
  %and6.i = and i32 %call29, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 48
  br i1 %cmp7.i, label %sw.bb5.i.if.end41_crit_edge, label %sw.bb5.i.do.end38_crit_edge

sw.bb5.i.do.end38_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

sw.bb5.i.if.end41_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

tsl2772_device_id_verif.exit:                     ; preds = %if.end32.tsl2772_device_id_verif.exit_crit_edge, %if.end32.tsl2772_device_id_verif.exit_crit_edge187, %if.end32.tsl2772_device_id_verif.exit_crit_edge188
  %and.i = and i32 %call29, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %tsl2772_device_id_verif.exit.if.end41_crit_edge, label %tsl2772_device_id_verif.exit.do.end38_crit_edge

tsl2772_device_id_verif.exit.do.end38_crit_edge:  ; preds = %tsl2772_device_id_verif.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

tsl2772_device_id_verif.exit.if.end41_crit_edge:  ; preds = %tsl2772_device_id_verif.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end38:                                         ; preds = %tsl2772_device_id_verif.exit.do.end38_crit_edge, %sw.bb5.i.do.end38_crit_edge, %sw.bb1.i.do.end38_crit_edge, %if.end32.do.end38_crit_edge
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev40, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end41:                                         ; preds = %tsl2772_device_id_verif.exit.if.end41_crit_edge, %sw.bb5.i.if.end41_crit_edge, %sw.bb1.i.if.end41_crit_edge
  %call42 = tail call i32 @i2c_smbus_write_byte(ptr noundef %clientp, i8 noundef zeroext -128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end47, label %do.body50

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, i32 noundef %call42) #11
  br label %cleanup

do.body50:                                        ; preds = %if.end41
  %als_mutex = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %als_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @tsl2772_probe.__key) #8
  %prox_mutex = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %prox_mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @tsl2772_probe.__key.20) #8
  %tsl2772_chip_status = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %tsl2772_chip_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tsl2772_chip_status, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %clientp, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %pdata, align 8
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %1, align 8
  %20 = load i32, ptr %driver_data, align 4
  %arrayidx61 = getelementptr [11 x i8], ptr @device_channel_config, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx61, align 1
  %idxprom = zext i8 %22 to i32
  %arrayidx62 = getelementptr [5 x %struct.tsl2772_chip_info], ptr @tsl2772_chip_info_tbl, i32 0, i32 %idxprom
  %chip_info = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx62, ptr %chip_info, align 8
  %info = getelementptr [5 x %struct.tsl2772_chip_info], ptr @tsl2772_chip_info_tbl, i32 0, i32 %idxprom, i32 3
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %info64 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %26 = ptrtoint ptr %info64 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %info64, align 8
  %27 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %call, align 8
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 2
  %name67 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %30 = ptrtoint ptr %name67 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %name, ptr %name67, align 8
  %31 = load ptr, ptr %chip_info, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %34 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %num_channels, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %clientp, i32 0, i32 6
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool69.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip_info, align 8
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %do.body50
  %channel_with_events = getelementptr inbounds %struct.tsl2772_chip_info, ptr %38, i32 0, i32 1
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %39 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %channel_with_events, ptr %channels, align 8
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  %call75 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %41, ptr noundef null, ptr noundef nonnull @tsl2772_event_handler, i32 noundef 8194, ptr noundef nonnull @.str.22, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then70.if.end86_crit_edge, label %do.end80

if.then70.if.end86_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end80:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.else:                                          ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %channel_without_events = getelementptr inbounds %struct.tsl2772_chip_info, ptr %38, i32 0, i32 2
  %channels85 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %42 = ptrtoint ptr %channels85 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %channel_without_events, ptr %channels85, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then70.if.end86_crit_edge
  %43 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdata, align 8
  %tobool.not.i168 = icmp eq ptr %44, null
  br i1 %tobool.not.i168, label %if.end.thread32.i, label %land.lhs.true.i

if.end.thread32.i:                                ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %settings533.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7
  %45 = call ptr @memcpy(ptr %settings533.i, ptr @tsl2772_default_settings, i32 72)
  br label %if.else14.i

land.lhs.true.i:                                  ; preds = %if.end86
  %platform_default_settings.i = getelementptr inbounds %struct.tsl2772_platform_data, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %platform_default_settings.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %platform_default_settings.i, align 4
  %tobool2.not.i = icmp eq ptr %47, null
  %settings5.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7
  br i1 %tobool2.not.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = call ptr @memcpy(ptr %settings5.i, ptr %47, i32 72)
  br label %land.lhs.true8.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = call ptr @memcpy(ptr %settings5.i, ptr @tsl2772_default_settings, i32 72)
  br label %land.lhs.true8.i

land.lhs.true8.i:                                 ; preds = %if.end.i, %if.end.thread.i
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.not.i = icmp eq i32 %51, 0
  br i1 %cmp.not.i, label %land.lhs.true8.i.if.else14.i_crit_edge, label %if.then10.i

land.lhs.true8.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  %tsl2772_device_lux.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 16
  %52 = call ptr @memcpy(ptr %tsl2772_device_lux.i, ptr %44, i32 48)
  br label %if.end18.i

if.else14.i:                                      ; preds = %land.lhs.true8.i.if.else14.i_crit_edge, %if.end.thread32.i
  %tsl2772_device_lux15.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 16
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 8
  %arrayidx17.i = getelementptr [11 x ptr], ptr @tsl2772_default_lux_table_group, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx17.i, align 4
  %57 = call ptr @memcpy(ptr %tsl2772_device_lux15.i, ptr %56, i32 24)
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else14.i, %if.then10.i
  %58 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client, align 4
  %of_node1.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4, i32 27
  %60 = ptrtoint ptr %of_node1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node1.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  %62 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !221
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %61, ptr noundef nonnull @.str.65, ptr noundef nonnull %tmp.i.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end18.i.tsl2772_read_prox_led_current.exit.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end18.i.tsl2772_read_prox_led_current.exit.i.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_read_prox_led_current.exit.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end18.i
  %63 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tmp.i.i.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %64, label %for.inc.3.i.i.i [
    i32 100000, label %for.cond.preheader.i.i.i.if.then7.i.i.i_crit_edge
    i32 50000, label %if.then7.fold.split.i.i.i
    i32 25000, label %if.then7.fold.split4.i.i.i
    i32 13000, label %if.then7.fold.split5.i.i.i
  ]

for.cond.preheader.i.i.i.if.then7.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

if.then7.fold.split.i.i.i:                        ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

if.then7.fold.split4.i.i.i:                       ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

if.then7.fold.split5.i.i.i:                       ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.then7.fold.split5.i.i.i, %if.then7.fold.split4.i.i.i, %if.then7.fold.split.i.i.i, %for.cond.preheader.i.i.i.if.then7.i.i.i_crit_edge
  %i.02.lcssa.i.i.i = phi i32 [ 0, %for.cond.preheader.i.i.i.if.then7.i.i.i_crit_edge ], [ 1, %if.then7.fold.split.i.i.i ], [ 2, %if.then7.fold.split4.i.i.i ], [ 3, %if.then7.fold.split5.i.i.i ]
  %arrayidx9.i.i.i = getelementptr [5 x [2 x i32]], ptr @tsl2772_led_currents, i32 0, i32 %i.02.lcssa.i.i.i, i32 1
  %66 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx9.i.i.i, align 4
  %prox_power.i.i.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 19
  %68 = ptrtoint ptr %prox_power.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %prox_power.i.i.i, align 4
  br label %tsl2772_read_prox_led_current.exit.i.i

for.inc.3.i.i.i:                                  ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %client, align 4
  %dev12.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i.i.i, ptr noundef nonnull @.str.66, i32 noundef %64) #11
  br label %tsl2772_read_prox_led_current.exit.i.i

tsl2772_read_prox_led_current.exit.i.i:           ; preds = %for.inc.3.i.i.i, %if.then7.i.i.i, %if.end18.i.tsl2772_read_prox_led_current.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  %71 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client, align 4
  %of_node1.i4.i.i = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4, i32 27
  %73 = ptrtoint ptr %of_node1.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node1.i4.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %leds.i.i.i) #8
  %75 = ptrtoint ptr %leds.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %leds.i.i.i, align 4, !annotation !221
  %76 = getelementptr inbounds [2 x i32], ptr %leds.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %76, align 4, !annotation !221
  %call.i.i.i.i = call i32 @of_property_count_elems_of_size(ptr noundef %74, ptr noundef nonnull @.str.68, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i5.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i5.i.i, label %tsl2772_read_prox_led_current.exit.i.i.tsl2772_defaults.exit_crit_edge, label %if.end.i.i.i

tsl2772_read_prox_led_current.exit.i.i.tsl2772_defaults.exit_crit_edge: ; preds = %tsl2772_read_prox_led_current.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_defaults.exit

if.end.i.i.i:                                     ; preds = %tsl2772_read_prox_led_current.exit.i.i
  %78 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 2) #8
  %call.i1.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %74, ptr noundef nonnull @.str.68, ptr noundef nonnull %leds.i.i.i, i32 noundef %78, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call.i1.i.i.i, 0
  br i1 %cmp6.i.i.i, label %do.end.i.i.i, label %for.cond.preheader.i6.i.i

for.cond.preheader.i6.i.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp112.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp112.not.i.i.i, label %for.cond.preheader.i6.i.i.tsl2772_defaults.exit_crit_edge, label %for.body.i.i.i

for.cond.preheader.i6.i.i.tsl2772_defaults.exit_crit_edge: ; preds = %for.cond.preheader.i6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_defaults.exit

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %client, align 4
  %dev9.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i.i.i, ptr noundef nonnull @.str.69, i32 noundef %call.i1.i.i.i) #11
  br label %tsl2772_defaults.exit

for.body.i.i.i:                                   ; preds = %for.cond.preheader.i6.i.i
  %81 = ptrtoint ptr %leds.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %leds.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %switch.i.i.i = icmp ult i32 %82, 2
  br i1 %switch.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.do.end21.i.i.i_crit_edge

for.body.i.i.i.do.end21.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i.i

do.end21.i.i.i:                                   ; preds = %for.body.i.i.i.1.do.end21.i.i.i_crit_edge, %for.body.i.i.i.do.end21.i.i.i_crit_edge
  %.lcssa = phi i32 [ %82, %for.body.i.i.i.do.end21.i.i.i_crit_edge ], [ %86, %for.body.i.i.i.1.do.end21.i.i.i_crit_edge ]
  %83 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %client, align 4
  %dev23.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i.i.i, ptr noundef nonnull @.str.72, i32 noundef %.lcssa) #11
  br label %tsl2772_defaults.exit

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i = icmp slt i32 %call.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.tsl2772_defaults.exit_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.tsl2772_defaults.exit_crit_edge:    ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_defaults.exit

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %arrayidx.i.i.i.1 = getelementptr inbounds [2 x i32], ptr %leds.i.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %switch.i.i.i.1 = icmp ult i32 %86, 2
  br i1 %switch.i.i.i.1, label %for.body.i.i.i.1.tsl2772_defaults.exit_crit_edge, label %for.body.i.i.i.1.do.end21.i.i.i_crit_edge

for.body.i.i.i.1.do.end21.i.i.i_crit_edge:        ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i.i

for.body.i.i.i.1.tsl2772_defaults.exit_crit_edge: ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_defaults.exit

tsl2772_defaults.exit:                            ; preds = %for.body.i.i.i.1.tsl2772_defaults.exit_crit_edge, %for.inc.i.i.i.tsl2772_defaults.exit_crit_edge, %do.end21.i.i.i, %do.end.i.i.i, %for.cond.preheader.i6.i.i.tsl2772_defaults.exit_crit_edge, %tsl2772_read_prox_led_current.exit.i.i.tsl2772_defaults.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %leds.i.i.i) #8
  %call87 = call fastcc i32 @tsl2772_chip_on(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %tsl2772_defaults.exit.cleanup_crit_edge, label %if.end90

tsl2772_defaults.exit.cleanup_crit_edge:          ; preds = %tsl2772_defaults.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %tsl2772_defaults.exit
  %call.i169 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tsl2772_chip_off_action, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i170, label %if.end90.if.end95_crit_edge, label %if.then.i171

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then.i171:                                     ; preds = %if.end90
  %87 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv.i, align 8
  %tsl2772_chip_status.i.i = getelementptr inbounds %struct.tsl2772_chip, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %tsl2772_chip_status.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %tsl2772_chip_status.i.i, align 4
  %client.i.i.i175 = getelementptr inbounds %struct.tsl2772_chip, ptr %88, i32 0, i32 3
  %90 = ptrtoint ptr %client.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %client.i.i.i175, align 4
  %call.i.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext -128, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i176 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i176, label %do.end.i.i.i177, label %if.then.i171.devm_add_action_or_reset.exit173_crit_edge

if.then.i171.devm_add_action_or_reset.exit173_crit_edge: ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_add_action_or_reset.exit173

do.end.i.i.i177:                                  ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %client.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %client.i.i.i175, align 4
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %call.i.i.i) #11
  br label %devm_add_action_or_reset.exit173

devm_add_action_or_reset.exit173:                 ; preds = %do.end.i.i.i177, %if.then.i171.devm_add_action_or_reset.exit173_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp93 = icmp slt i32 %call.i169, 0
  br i1 %cmp93, label %devm_add_action_or_reset.exit173.cleanup_crit_edge, label %devm_add_action_or_reset.exit173.if.end95_crit_edge

devm_add_action_or_reset.exit173.if.end95_crit_edge: ; preds = %devm_add_action_or_reset.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

devm_add_action_or_reset.exit173.cleanup_crit_edge: ; preds = %devm_add_action_or_reset.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %devm_add_action_or_reset.exit173.if.end95_crit_edge, %if.end90.if.end95_crit_edge
  %call97 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %devm_add_action_or_reset.exit173.cleanup_crit_edge, %tsl2772_defaults.exit.cleanup_crit_edge, %do.end80, %do.end47, %do.end38, %if.end27.cleanup_crit_edge, %do.end25, %do.end, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then8 ], [ %call14, %do.end ], [ %call.i, %do.end25 ], [ -22, %do.end38 ], [ %call42, %do.end47 ], [ %call75, %do.end80 ], [ %call97, %if.end95 ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end27.cleanup_crit_edge ], [ %call87, %tsl2772_defaults.exit.cleanup_crit_edge ], [ %call.i169, %devm_add_action_or_reset.exit173.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsl2772_disable_regulators_action(ptr noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.tsl2772_chip, ptr %_data, i32 0, i32 4
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #8
  %client.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tsl2772_read_status.exit.thread, label %if.end

tsl2772_read_status.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 34359738368, i64 noundef %call1) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %and6 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 25769803776, i64 noundef %call1) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call11 = tail call i32 @i2c_smbus_write_byte(ptr noundef %7, i8 noundef zeroext -25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %call11) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge, %tsl2772_read_status.exit.thread
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2772_chip_on(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %settings = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %settings, align 8
  %conv = trunc i32 %3 to i8
  %arrayidx = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx, align 1
  %prox_time = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 4
  %5 = ptrtoint ptr %prox_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prox_time, align 8
  %conv2 = trunc i32 %6 to i8
  %arrayidx4 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 2
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2, ptr %arrayidx4, align 2
  %wait_time = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %wait_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wait_time, align 4
  %conv6 = trunc i32 %9 to i8
  %arrayidx8 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %arrayidx8, align 1
  %als_prox_config = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 6
  %11 = ptrtoint ptr %als_prox_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %als_prox_config, align 8
  %conv10 = trunc i32 %12 to i8
  %arrayidx12 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 13
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %arrayidx12, align 1
  %als_thresh_low = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 10
  %14 = ptrtoint ptr %als_thresh_low to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %als_thresh_low, align 4
  %conv14 = trunc i32 %15 to i8
  %arrayidx16 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 4
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv14, ptr %arrayidx16, align 4
  %17 = lshr i32 %15, 8
  %conv20 = trunc i32 %17 to i8
  %arrayidx22 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 5
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv20, ptr %arrayidx22, align 1
  %als_thresh_high = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 11
  %19 = ptrtoint ptr %als_thresh_high to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %als_thresh_high, align 8
  %conv25 = trunc i32 %20 to i8
  %arrayidx27 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 6
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv25, ptr %arrayidx27, align 2
  %22 = lshr i32 %20, 8
  %conv32 = trunc i32 %22 to i8
  %arrayidx34 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 7
  %23 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv32, ptr %arrayidx34, align 1
  %prox_persistence = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 12
  %24 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prox_persistence, align 4
  %shl = shl i8 %25, 4
  %als_persistence = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 8
  %26 = ptrtoint ptr %als_persistence to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %als_persistence, align 8
  %or = or i8 %shl, %27
  %arrayidx43 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 12
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %or, ptr %arrayidx43, align 4
  %prox_pulse_count = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 16
  %29 = ptrtoint ptr %prox_pulse_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prox_pulse_count, align 8
  %conv45 = trunc i32 %30 to i8
  %arrayidx47 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 14
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv45, ptr %arrayidx47, align 2
  %prox_thres_low = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 14
  %32 = ptrtoint ptr %prox_thres_low to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prox_thres_low, align 8
  %conv50 = trunc i32 %33 to i8
  %arrayidx52 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 8
  %34 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv50, ptr %arrayidx52, align 8
  %35 = lshr i32 %33, 8
  %conv57 = trunc i32 %35 to i8
  %arrayidx59 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 9
  %36 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv57, ptr %arrayidx59, align 1
  %prox_thres_high = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 15
  %37 = ptrtoint ptr %prox_thres_high to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prox_thres_high, align 4
  %conv62 = trunc i32 %38 to i8
  %arrayidx64 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 10
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv62, ptr %arrayidx64, align 2
  %40 = lshr i32 %38, 8
  %conv69 = trunc i32 %40 to i8
  %arrayidx71 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 11
  %41 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv69, ptr %arrayidx71, align 1
  %tsl2772_chip_status = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %tsl2772_chip_status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tsl2772_chip_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp = icmp eq i32 %43, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.74) #11
  br label %cleanup148

if.end:                                           ; preds = %entry
  %als_gain = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %als_gain to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %als_gain, align 4
  %prox_gain = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 5
  %48 = ptrtoint ptr %prox_gain to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %prox_gain, align 4
  %and76 = shl i32 %49, 2
  %or78 = or i32 %and76, %47
  %prox_diode = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 18
  %50 = ptrtoint ptr %prox_diode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prox_diode, align 8
  %shl80 = shl i32 %51, 4
  %or81 = or i32 %or78, %shl80
  %prox_power = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 19
  %52 = ptrtoint ptr %prox_power to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prox_power, align 4
  %shl83 = shl i32 %53, 6
  %or84 = or i32 %or81, %shl83
  %conv85 = trunc i32 %or84 to i8
  %arrayidx87 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 12, i32 15
  %54 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv85, ptr %arrayidx87, align 1
  %sub = sub i32 256, %3
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 8
  %arrayidx91 = getelementptr [11 x [6 x i32]], ptr @tsl2772_int_time_avail, i32 0, i32 %56, i32 3
  %57 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx91, align 4
  %mul = mul i32 %58, %sub
  %mul92 = mul i32 %sub, 768
  %als_saturation = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 10
  %59 = ptrtoint ptr %als_saturation to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul92, ptr %als_saturation, align 8
  %arrayidx95 = getelementptr [4 x i16], ptr @tsl2772_als_gain, i32 0, i32 %47
  %60 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx95, align 2
  %conv96 = sext i16 %61 to i32
  %mul97 = mul i32 %mul, %conv96
  %als_gain_time_scale = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 9
  %62 = ptrtoint ptr %als_gain_time_scale to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul97, ptr %als_gain_time_scale, align 4
  %client.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext -128, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tsl2772_write_control_reg.exit.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %tsl2772_config = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 12
  br label %for.body

tsl2772_write_control_reg.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef %call.i) #11
  br label %cleanup148

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %dev_reg.0229 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %tsl2772_config, %for.body.preheader ]
  %i.0228 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add nuw nsw i32 %i.0228, 128
  %67 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client.i, align 4
  %conv107 = trunc i32 %add to i8
  %69 = ptrtoint ptr %dev_reg.0229 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dev_reg.0229, align 1
  %call108 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext %conv107, i8 noundef zeroext %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client.i, align 4
  %dev116 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev116, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %add, i32 noundef %call108) #11
  br label %cleanup148

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %dev_reg.0229, i32 1
  %inc = add nuw nsw i32 %i.0228, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3500, i32 noundef 2) #8
  %als_interrupt_en = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 9
  %73 = ptrtoint ptr %als_interrupt_en to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %als_interrupt_en, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not = icmp eq i8 %74, 0
  %spec.select = select i1 %tobool.not, i8 7, i8 23
  %prox_interrupt_en = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 13
  %75 = ptrtoint ptr %prox_interrupt_en to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %prox_interrupt_en, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool125.not = icmp eq i8 %76, 0
  %77 = or i8 %spec.select, 32
  %reg_val.1 = select i1 %tobool125.not, i8 %spec.select, i8 %77
  %78 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %client.i, align 4
  %call.i222 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %79, i8 noundef zeroext -128, i8 noundef zeroext %reg_val.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %cmp.i223 = icmp slt i32 %call.i222, 0
  %80 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %client.i, align 4
  br i1 %cmp.i223, label %tsl2772_write_control_reg.exit226.thread, label %if.end135

tsl2772_write_control_reg.exit226.thread:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i224 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 4
  %conv.i = zext i8 %reg_val.1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i224, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %conv.i, i32 noundef %call.i222) #11
  br label %cleanup148

if.end135:                                        ; preds = %for.end
  %call137 = tail call i32 @i2c_smbus_write_byte(ptr noundef %81, i8 noundef zeroext -25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %do.end143, label %if.end146

do.end143:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client.i, align 4
  %dev145 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev145, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.75, i32 noundef %call137) #11
  br label %cleanup148

if.end146:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %tsl2772_chip_status to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %tsl2772_chip_status, align 4
  br label %cleanup148

cleanup148:                                       ; preds = %if.end146, %do.end143, %tsl2772_write_control_reg.exit226.thread, %cleanup.thread, %tsl2772_write_control_reg.exit.thread, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ %call137, %do.end143 ], [ %call137, %if.end146 ], [ %call.i, %tsl2772_write_control_reg.exit.thread ], [ %call108, %cleanup.thread ], [ %call.i222, %tsl2772_write_control_reg.exit226.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsl2772_chip_off_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %tsl2772_chip_status.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tsl2772_chip_status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %tsl2772_chip_status.i, align 4
  %client.i.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -128, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.tsl2772_chip_off.exit_crit_edge

entry.tsl2772_chip_off.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_chip_off.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %tsl2772_chip_off.exit

tsl2772_chip_off.exit:                            ; preds = %do.end.i.i, %entry.tsl2772_chip_off.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
    i32 4, label %sw.bb16
    i32 5, label %sw.bb27
    i32 18, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cond = icmp eq i32 %4, 6
  br i1 %cond, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @tsl2772_get_lux(ptr noundef %indio_dev)
  %lux = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %lux to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %lux, align 2
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %9, label %sw.bb3.cleanup_crit_edge [
    i32 7, label %sw.bb5
    i32 8, label %sw.bb12
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i32 @tsl2772_get_lux(ptr noundef %indio_dev)
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %als_ch1 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 6, i32 1
  %als_cur_info8 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 6
  %storemerge55.in.in = select i1 %cmp, ptr %als_cur_info8, ptr %als_ch1
  %13 = ptrtoint ptr %storemerge55.in.in to i32
  call void @__asan_load2_noabort(i32 %13)
  %storemerge55.in = load i16, ptr %storemerge55.in.in, align 2
  %storemerge55 = zext i16 %storemerge55.in to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge55, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call fastcc i32 @tsl2772_get_prox(ptr noundef %indio_dev)
  %prox_data = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %prox_data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %prox_data, align 8
  %conv14 = zext i16 %16 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv14, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp18 = icmp eq i32 %19, 6
  %prox_gain = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 5
  %als_gain = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 1
  %prox_gain.sink = select i1 %cmp18, ptr %als_gain, ptr %prox_gain
  %tsl2772_prox_gain.sink = select i1 %cmp18, ptr @tsl2772_als_gain, ptr @tsl2772_prox_gain
  %20 = ptrtoint ptr %prox_gain.sink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prox_gain.sink, align 4
  %arrayidx24 = getelementptr [4 x i16], ptr %tsl2772_prox_gain.sink, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %22)
  %storemerge.in = load i16, ptr %arrayidx24, align 2
  %storemerge = sext i16 %storemerge.in to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %als_gain_trim = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %als_gain_trim to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %als_gain_trim, align 8
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val, align 4
  %settings30 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %settings30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %settings30, align 8
  %sub = sub i32 256, %29
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 8
  %arrayidx32 = getelementptr [11 x [6 x i32]], ptr @tsl2772_int_time_avail, i32 0, i32 %31, i32 3
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx32, align 4
  %mul = mul i32 %33, %sub
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb29, %sw.bb27, %sw.bb16, %sw.bb12, %sw.bb5, %sw.bb3.cleanup_crit_edge, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb29 ], [ 1, %sw.bb27 ], [ 1, %sw.bb16 ], [ 1, %sw.bb12 ], [ 1, %sw.bb5 ], [ 1, %sw.bb1 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tsl2772_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 18, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp = icmp eq i32 %2, 7
  %tsl2772_int_calibscale_avail.tsl2772_prox_calibscale_avail = select i1 %cmp, ptr @tsl2772_int_calibscale_avail, ptr @tsl2772_prox_calibscale_avail
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %length, align 4
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %length, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 8
  %arrayidx = getelementptr [11 x [6 x i32]], ptr @tsl2772_int_time_avail, i32 0, i32 %8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %sw.bb
  %arrayidx.sink = phi ptr [ %arrayidx, %sw.bb2 ], [ %tsl2772_int_calibscale_avail.tsl2772_prox_calibscale_avail, %sw.bb ]
  %.sink = phi i32 [ 2, %sw.bb2 ], [ 1, %sw.bb ]
  %retval.0.ph = phi i32 [ 1, %sw.bb2 ], [ 0, %sw.bb ]
  %9 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.sink, ptr %vals, align 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb24
    i32 18, label %sw.bb30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %val, label %if.then.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 8, label %sw.bb2
    i32 16, label %sw.bb5
    i32 120, label %sw.bb8
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_gain = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %als_gain to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %als_gain, align 4
  br label %sw.epilog47

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_gain4 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %als_gain4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %als_gain4, align 4
  br label %sw.epilog47

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_gain7 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %als_gain7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %als_gain7, align 4
  br label %sw.epilog47

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_gain10 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %als_gain10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %als_gain10, align 4
  br label %sw.epilog47

if.else:                                          ; preds = %sw.bb
  %10 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %val, label %if.else.cleanup_crit_edge [
    i32 1, label %sw.bb11
    i32 2, label %sw.bb13
    i32 4, label %sw.bb16
    i32 8, label %sw.bb19
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prox_gain = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %prox_gain to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %prox_gain, align 4
  br label %sw.epilog47

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prox_gain15 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %prox_gain15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %prox_gain15, align 4
  br label %sw.epilog47

sw.bb16:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prox_gain18 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %prox_gain18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %prox_gain18, align 4
  br label %sw.epilog47

sw.bb19:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prox_gain21 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %prox_gain21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %prox_gain21, align 4
  br label %sw.epilog47

sw.bb24:                                          ; preds = %entry
  %15 = add i32 %val, -4001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3751, i32 %15)
  %16 = icmp ult i32 %15, -3751
  br i1 %16, label %sw.bb24.cleanup_crit_edge, label %if.end28

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  %als_gain_trim = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %als_gain_trim to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %val, ptr %als_gain_trim, align 8
  br label %sw.epilog47

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp31.not = icmp eq i32 %val, 0
  br i1 %cmp31.not, label %lor.lhs.false32, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false32:                                  ; preds = %sw.bb30
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 8
  %arrayidx33 = getelementptr [11 x [6 x i32]], ptr @tsl2772_int_time_avail, i32 0, i32 %19, i32 1
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %val2)
  %cmp34 = icmp sgt i32 %21, %val2
  br i1 %cmp34, label %lor.lhs.false32.cleanup_crit_edge, label %lor.lhs.false35

lor.lhs.false32.cleanup_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %arrayidx38 = getelementptr [11 x [6 x i32]], ptr @tsl2772_int_time_avail, i32 0, i32 %19, i32 5
  %22 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %val2)
  %cmp39 = icmp slt i32 %23, %val2
  br i1 %cmp39, label %lor.lhs.false35.cleanup_crit_edge, label %if.end41

lor.lhs.false35.cleanup_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr [11 x [6 x i32]], ptr @tsl2772_int_time_avail, i32 0, i32 %19, i32 3
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %div = sdiv i32 %val2, %25
  %sub = sub i32 256, %div
  %settings45 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %settings45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %settings45, align 8
  br label %sw.epilog47

sw.epilog47:                                      ; preds = %if.end41, %if.end28, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb1
  %call48 = tail call fastcc i32 @tsl2772_invoke_change(ptr noundef %indio_dev)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog47, %lor.lhs.false35.cleanup_crit_edge, %lor.lhs.false32.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %sw.epilog47 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %sw.bb24.cleanup_crit_edge ], [ -22, %lor.lhs.false35.cleanup_crit_edge ], [ -22, %lor.lhs.false32.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tsl2772_read_interrupt_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp eq i32 %3, 7
  %als_interrupt_en = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 9
  %prox_interrupt_en = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 13
  %retval.0.in.in = select i1 %cmp, ptr %als_interrupt_en, ptr %prox_interrupt_en
  %4 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %retval.0.in = load i8, ptr %retval.0.in.in, align 1, !range !222
  %retval.0 = zext i8 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_write_interrupt_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp eq i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  %prox_interrupt_en = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 13
  %als_interrupt_en = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 9
  %prox_interrupt_en.sink = select i1 %cmp, ptr %als_interrupt_en, ptr %prox_interrupt_en
  %frombool7 = zext i1 %tobool to i8
  %4 = ptrtoint ptr %prox_interrupt_en.sink to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool7, ptr %prox_interrupt_en.sink, align 1
  %call8 = tail call fastcc i32 @tsl2772_invoke_change(ptr noundef %indio_dev)
  ret i32 %call8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tsl2772_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %dir, label %if.then.cleanup_crit_edge [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_thresh_high = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 11
  %6 = ptrtoint ptr %als_thresh_high to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %als_thresh_high, align 8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_thresh_low = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 10
  %9 = ptrtoint ptr %als_thresh_low to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %als_thresh_low, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %12 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %dir, label %if.else.cleanup_crit_edge [
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prox_thres_high = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 15
  %13 = ptrtoint ptr %prox_thres_high to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prox_thres_high, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prox_thres_low = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 14
  %16 = ptrtoint ptr %prox_thres_low to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prox_thres_low, align 8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %19 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp12 = icmp eq i32 %20, 7
  br i1 %cmp12, label %if.then13, label %if.else20

if.then13:                                        ; preds = %sw.bb10
  %settings14 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %settings14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %settings14, align 8
  %als_persistence = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %als_persistence to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %als_persistence, align 8
  %conv16 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp17 = icmp ugt i8 %24, 3
  br i1 %cmp17, label %if.then19, label %if.then13.if.end25_crit_edge

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %25 = mul nuw nsw i32 %conv16, 5
  %mul = add nsw i32 %25, -15
  br label %if.end25

if.else20:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %prox_time = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %prox_time to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prox_time, align 8
  %prox_persistence = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 12
  %28 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %prox_persistence, align 4
  %conv24 = zext i8 %29 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.then19, %if.then13.if.end25_crit_edge
  %persistence.0 = phi i32 [ %mul, %if.then19 ], [ %conv16, %if.then13.if.end25_crit_edge ], [ %conv24, %if.else20 ]
  %time.0.in = phi i32 [ %22, %if.then19 ], [ %22, %if.then13.if.end25_crit_edge ], [ %27, %if.else20 ]
  %conv26 = and i32 %time.0.in, 255
  %sub27 = sub nuw nsw i32 256, %conv26
  %mul28 = mul nsw i32 %sub27, %persistence.0
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 8
  %arrayidx29 = getelementptr [11 x [6 x i32]], ptr @tsl2772_int_time_avail, i32 0, i32 %31, i32 3
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx29, align 4
  %mul30 = mul i32 %mul28, %33
  %mul30.frozen = freeze i32 %mul30
  %div = sdiv i32 %mul30.frozen, 1000000
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div, ptr %val, align 4
  %35 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %mul30.frozen, %35
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %rem.decomposed, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %sw.bb7, %sw.bb5, %if.else.cleanup_crit_edge, %sw.bb3, %sw.bb2, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end25 ], [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 1, %sw.bb7 ], [ 1, %sw.bb5 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %dir, label %if.then.cleanup_crit_edge [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_thresh_high = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 11
  %6 = ptrtoint ptr %als_thresh_high to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %als_thresh_high, align 8
  br label %if.end44

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_thresh_low = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 10
  %7 = ptrtoint ptr %als_thresh_low to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %als_thresh_low, align 4
  br label %if.end44

if.else:                                          ; preds = %sw.bb
  %8 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %dir, label %if.else.cleanup_crit_edge [
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prox_thres_high = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 15
  %9 = ptrtoint ptr %prox_thres_high to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val, ptr %prox_thres_high, align 4
  br label %if.end44

sw.bb7:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prox_thres_low = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 14
  %10 = ptrtoint ptr %prox_thres_low to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %val, ptr %prox_thres_low, align 8
  br label %if.end44

sw.bb11:                                          ; preds = %entry
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp13 = icmp eq i32 %12, 7
  %settings15 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7
  %prox_time = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 4
  %time.0.in.in = select i1 %cmp13, ptr %settings15, ptr %prox_time
  %13 = ptrtoint ptr %time.0.in.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %time.0.in = load i32, ptr %time.0.in.in, align 8
  %conv20 = and i32 %time.0.in, 255
  %sub = sub nuw nsw i32 256, %conv20
  %mul = mul i32 %val, 1000000
  %add = add i32 %mul, %val2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %arrayidx21 = getelementptr [11 x [6 x i32]], ptr @tsl2772_int_time_avail, i32 0, i32 %15, i32 3
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  %mul22 = mul i32 %sub, %17
  %div = sdiv i32 %add, %mul22
  br i1 %cmp13, label %if.then26, label %if.else35

if.then26:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp27 = icmp sgt i32 %div, 3
  %div30 = sdiv i32 %div, 5
  %add31 = add nsw i32 %div30, 3
  %persistence.0 = select i1 %cmp27, i32 %add31, i32 %div
  %conv33 = trunc i32 %persistence.0 to i8
  %als_persistence = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 8
  %18 = ptrtoint ptr %als_persistence to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv33, ptr %als_persistence, align 8
  br label %if.end44

if.else35:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %conv36 = trunc i32 %div to i8
  %prox_persistence = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 12
  %19 = ptrtoint ptr %prox_persistence to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv36, ptr %prox_persistence, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else35, %if.then26, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2
  %call45 = tail call fastcc i32 @tsl2772_invoke_change(ptr noundef %indio_dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance0_target_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %als_cal_target = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 7
  %2 = ptrtoint ptr %als_cal_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %als_cal_target, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %3) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance0_target_input_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %value, align 2, !annotation !221
  %call2 = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %value, align 2
  %conv = zext i16 %4 to i32
  %als_cal_target = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 7
  %5 = ptrtoint ptr %als_cal_target to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %als_cal_target, align 4
  %call3 = call fastcc i32 @tsl2772_invoke_change(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %call3.len = select i1 %cmp, i32 %call3, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3.len, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2772_invoke_change(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tsl2772_chip_status = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tsl2772_chip_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tsl2772_chip_status, align 4
  %als_mutex = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %als_mutex, i32 noundef 0) #8
  %prox_mutex = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %prox_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %tsl2772_chip_status.i = getelementptr inbounds %struct.tsl2772_chip, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %tsl2772_chip_status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %tsl2772_chip_status.i, align 4
  %client.i.i = getelementptr inbounds %struct.tsl2772_chip, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -128, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %tsl2772_chip_off.exit.thread, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

tsl2772_chip_off.exit.thread:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %unlock

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call fastcc i32 @tsl2772_chip_on(ptr noundef %indio_dev)
  br label %unlock

unlock:                                           ; preds = %if.end4, %tsl2772_chip_off.exit.thread
  %ret.0 = phi i32 [ %call5, %if.end4 ], [ %call.i.i, %tsl2772_chip_off.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %prox_mutex) #8
  tail call void @mutex_unlock(ptr noundef %als_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance0_calibrate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !221
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 8
  %client.i = getelementptr inbounds %struct.tsl2772_chip, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %call1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %call1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp3.not.i = icmp eq i32 %and.i, 3
  br i1 %cmp3.not.i, label %if.else.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %and10.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %cmp11.not.not.i = icmp eq i32 %and10.i, 0
  br i1 %cmp11.not.not.i, label %do.end15.i, label %if.end19.i

do.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end19.i:                                       ; preds = %if.else.i
  %call20.i = call fastcc i32 @tsl2772_get_lux(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %do.end25.i, label %if.end28.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %dev27.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end28.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp29.i = icmp eq i32 %call20.i, 0
  br i1 %cmp29.i, label %if.end28.i.cleanup_crit_edge, label %if.end31.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31.i:                                       ; preds = %if.end28.i
  %als_cal_target.i = getelementptr inbounds %struct.tsl2772_chip, ptr %4, i32 0, i32 7, i32 7
  %15 = ptrtoint ptr %als_cal_target.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %als_cal_target.i, align 4
  %als_gain_trim.i = getelementptr inbounds %struct.tsl2772_chip, ptr %4, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %als_gain_trim.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %als_gain_trim.i, align 8
  %mul.i = mul i32 %18, %16
  %div.i = sdiv i32 %mul.i, %call20.i
  %19 = add i32 %div.i, -4001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3751, i32 %19)
  %20 = icmp ult i32 %19, -3751
  br i1 %20, label %if.end31.i.cleanup_crit_edge, label %if.end5

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %als_gain_trim.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.i, ptr %als_gain_trim.i, align 8
  %call6 = call fastcc i32 @tsl2772_invoke_change(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  %call6.len = select i1 %cmp7, i32 %call6, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end31.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %do.end25.i, %do.end15.i, %do.end7.i, %do.end.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call6.len, %if.end5 ], [ -34, %if.end31.i.cleanup_crit_edge ], [ -34, %if.end28.i.cleanup_crit_edge ], [ %call20.i, %do.end25.i ], [ -61, %do.end15.i ], [ -22, %do.end7.i ], [ %call1.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2772_get_lux(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %als_mutex = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %als_mutex, i32 noundef 0) #8
  %tsl2772_chip_status = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tsl2772_chip_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tsl2772_chip_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  %client.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #11
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tsl2772_read_status.exit.thread, label %if.end4

tsl2772_read_status.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call.i) #11
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #11
  %lux = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %lux to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lux, align 2
  %conv = zext i16 %11 to i32
  br label %out_unlock

if.end11:                                         ; preds = %if.end4
  %call12 = tail call fastcc i32 @tsl2772_read_autoinc_regs(ptr noundef %1, i32 noundef 20, i32 noundef 21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.out_unlock_crit_edge, label %if.end16

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end16:                                         ; preds = %if.end11
  %conv17 = trunc i32 %call12 to i16
  %als_cur_info18 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %als_cur_info18 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv17, ptr %als_cur_info18, align 2
  %call19 = tail call fastcc i32 @tsl2772_read_autoinc_regs(ptr noundef %1, i32 noundef 22, i32 noundef 23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end16.out_unlock_crit_edge, label %if.end23

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end23:                                         ; preds = %if.end16
  %conv24 = trunc i32 %call19 to i16
  %als_ch1 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %als_ch1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv24, ptr %als_ch1, align 2
  %14 = ptrtoint ptr %als_cur_info18 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %als_cur_info18, align 2
  %conv28 = zext i16 %15 to i32
  %als_saturation = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %als_saturation to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %als_saturation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv28)
  %cmp29.not = icmp sgt i32 %17, %conv28
  br i1 %cmp29.not, label %if.end32, label %if.end23.update_struct_with_max_lux_crit_edge

if.end23.update_struct_with_max_lux_crit_edge:    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_struct_with_max_lux

if.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool35.not = icmp eq i16 %15, 0
  br i1 %tobool35.not, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %lux38 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %lux38 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lux38, align 2
  %conv39 = zext i16 %19 to i32
  br label %out_unlock

if.end40:                                         ; preds = %if.end32
  %tsl2772_device_lux = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %tsl2772_device_lux to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tsl2772_device_lux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp41.not112 = icmp eq i32 %21, 0
  br i1 %cmp41.not112, label %if.end40.update_struct_with_max_lux_crit_edge, label %for.body.lr.ph

if.end40.update_struct_with_max_lux_crit_edge:    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_struct_with_max_lux

for.body.lr.ph:                                   ; preds = %if.end40
  %conv50 = and i32 %call19, 65535
  %als_gain_time_scale = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %als_gain_time_scale to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %als_gain_time_scale, align 4
  %als_gain_trim = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %als_gain_trim to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %als_gain_trim, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %26 = phi i32 [ %21, %for.body.lr.ph ], [ %31, %for.body.for.body_crit_edge ]
  %overflow.0.off0115 = phi i1 [ false, %for.body.lr.ph ], [ %overflow.1.off0, %for.body.for.body_crit_edge ]
  %max_lux.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %max_lux.1, %for.body.for.body_crit_edge ]
  %p.0113 = phi ptr [ %tsl2772_device_lux, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %mul = mul i32 %26, %conv28
  %ch1 = getelementptr inbounds %struct.tsl2772_lux, ptr %p.0113, i32 0, i32 1
  %27 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ch1, align 4
  %mul51 = mul i32 %28, %conv50
  %sub = sub i32 %mul, %mul51
  %div = udiv i32 %sub, %23
  %mul52 = mul i32 %25, %div
  %div53 = sdiv i32 %mul52, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535999, i32 %mul52)
  %cmp54 = icmp sgt i32 %mul52, 65535999
  %29 = tail call i32 @llvm.smax.i32(i32 %max_lux.0114, i32 %div53)
  %max_lux.1 = select i1 %cmp54, i32 %max_lux.0114, i32 %29
  %overflow.1.off0 = select i1 %cmp54, i1 true, i1 %overflow.0.off0115
  %incdec.ptr = getelementptr %struct.tsl2772_lux, ptr %p.0113, i32 1
  %30 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr, align 4
  %cmp41.not = icmp eq i32 %31, 0
  br i1 %cmp41.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %overflow.1.off0, label %land.lhs.true, label %for.end.update_struct_with_max_lux_crit_edge

for.end.update_struct_with_max_lux_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_struct_with_max_lux

land.lhs.true:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_lux.1)
  %cmp62 = icmp eq i32 %max_lux.1, 0
  %spec.store.select = select i1 %cmp62, i32 65535, i32 %max_lux.1
  br label %update_struct_with_max_lux

update_struct_with_max_lux:                       ; preds = %land.lhs.true, %for.end.update_struct_with_max_lux_crit_edge, %if.end40.update_struct_with_max_lux_crit_edge, %if.end23.update_struct_with_max_lux_crit_edge
  %max_lux.2 = phi i32 [ %spec.store.select, %land.lhs.true ], [ %max_lux.1, %for.end.update_struct_with_max_lux_crit_edge ], [ 65535, %if.end23.update_struct_with_max_lux_crit_edge ], [ 0, %if.end40.update_struct_with_max_lux_crit_edge ]
  %conv66 = trunc i32 %max_lux.2 to i16
  %lux68 = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %lux68 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv66, ptr %lux68, align 2
  br label %out_unlock

out_unlock:                                       ; preds = %update_struct_with_max_lux, %if.then36, %if.end16.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge, %do.end8, %tsl2772_read_status.exit.thread, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ %call12, %if.end11.out_unlock_crit_edge ], [ %call19, %if.end16.out_unlock_crit_edge ], [ %max_lux.2, %update_struct_with_max_lux ], [ %conv39, %if.then36 ], [ %conv, %do.end8 ], [ %call.i, %tsl2772_read_status.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %als_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2772_read_autoinc_regs(ptr nocapture noundef readonly %chip, i32 noundef %lower_reg, i32 noundef %upper_reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.tsl2772_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %2 = trunc i32 %lower_reg to i8
  %conv = or i8 %2, -96
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv5 = or i8 %2, -128
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext %conv5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  br i1 %cmp7, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %lower_reg, i32 noundef %call6) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %7 = trunc i32 %upper_reg to i8
  %conv19 = or i8 %7, -128
  %call20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext %conv19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  br i1 %cmp21, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %upper_reg, i32 noundef %call20) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  %call35 = tail call i32 @i2c_smbus_write_byte(ptr noundef %9, i8 noundef zeroext %conv5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.50, i32 noundef %call35) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %12 = trunc i32 %call20 to i16
  %buf.sroa.5.0.insert.ext = and i16 %12, 255
  %13 = trunc i32 %call6 to i16
  %buf.sroa.0.0.insert.ext = shl i16 %13, 8
  %buf.sroa.0.0.insert.insert = or i16 %buf.sroa.5.0.insert.ext, %buf.sroa.0.0.insert.ext
  %14 = tail call i16 @llvm.bswap.i16(i16 %buf.sroa.0.0.insert.insert) #8
  %conv47 = zext i16 %14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end41, %do.end26, %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call6, %do.end12 ], [ %call20, %do.end26 ], [ %call35, %do.end41 ], [ %conv47, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance0_lux_table_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %arrayidx = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %ch1 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 0, i32 1
  %4 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch1, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.60, i32 noundef %3, i32 noundef %5) #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %entry.if.then_crit_edge, label %while.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.cond:                                       ; preds = %entry
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call4
  %sub.1 = sub i32 4096, %call4
  %arrayidx.1 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 8
  %ch1.1 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 1, i32 1
  %10 = ptrtoint ptr %ch1.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch1.1, align 4
  %call4.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.60, i32 noundef %9, i32 noundef %11) #8
  %add.1 = add i32 %call4.1, %call4
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8.1 = icmp eq i32 %13, 0
  br i1 %cmp8.1, label %while.cond.if.then_crit_edge, label %while.cond.1

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.cond.1:                                     ; preds = %while.cond
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %arrayidx.2 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 8
  %ch1.2 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 2, i32 1
  %16 = ptrtoint ptr %ch1.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch1.2, align 4
  %call4.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.60, i32 noundef %15, i32 noundef %17) #8
  %add.2 = add i32 %call4.2, %add.1
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8.2 = icmp eq i32 %19, 0
  br i1 %cmp8.2, label %while.cond.1.if.then_crit_edge, label %while.cond.2

while.cond.1.if.then_crit_edge:                   ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.cond.2:                                     ; preds = %while.cond.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %arrayidx.3 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3, align 8
  %ch1.3 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 3, i32 1
  %22 = ptrtoint ptr %ch1.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch1.3, align 4
  %call4.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.60, i32 noundef %21, i32 noundef %23) #8
  %add.3 = add i32 %call4.3, %add.2
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp8.3 = icmp eq i32 %25, 0
  br i1 %cmp8.3, label %while.cond.2.if.then_crit_edge, label %while.cond.3

while.cond.2.if.then_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.cond.3:                                     ; preds = %while.cond.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %arrayidx.4 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4, align 8
  %ch1.4 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 4, i32 1
  %28 = ptrtoint ptr %ch1.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ch1.4, align 4
  %call4.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.60, i32 noundef %27, i32 noundef %29) #8
  %add.4 = add i32 %call4.4, %add.3
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp8.4 = icmp eq i32 %31, 0
  br i1 %cmp8.4, label %while.cond.3.if.then_crit_edge, label %while.cond.4

while.cond.3.if.then_crit_edge:                   ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.cond.4:                                     ; preds = %while.cond.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %arrayidx.5 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 8
  %ch1.5 = getelementptr %struct.tsl2772_chip, ptr %1, i32 0, i32 16, i32 5, i32 1
  %34 = ptrtoint ptr %ch1.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ch1.5, align 4
  %call4.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.60, i32 noundef %33, i32 noundef %35) #8
  %add.5 = add i32 %call4.5, %add.4
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp8.5 = icmp eq i32 %37, 0
  br i1 %cmp8.5, label %while.cond.4.if.then_crit_edge, label %while.cond.4.while.end_crit_edge

while.cond.4.while.end_crit_edge:                 ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.4.if.then_crit_edge:                   ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %while.cond.4.if.then_crit_edge, %while.cond.3.if.then_crit_edge, %while.cond.2.if.then_crit_edge, %while.cond.1.if.then_crit_edge, %while.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %add.lcssa = phi i32 [ %call4, %entry.if.then_crit_edge ], [ %add.1, %while.cond.if.then_crit_edge ], [ %add.2, %while.cond.1.if.then_crit_edge ], [ %add.3, %while.cond.2.if.then_crit_edge ], [ %add.4, %while.cond.3.if.then_crit_edge ], [ %add.5, %while.cond.4.if.then_crit_edge ]
  %dec = add i32 %add.lcssa, -1
  br label %while.end

while.end:                                        ; preds = %if.then, %while.cond.4.while.end_crit_edge
  %offset.1 = phi i32 [ %dec, %if.then ], [ %add.5, %while.cond.4.while.end_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %offset.1
  %sub10 = sub i32 4096, %offset.1
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.61) #8
  %add12 = add i32 %call11, %offset.1
  ret i32 %add12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_illuminance0_lux_table_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %value = alloca [13 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %value) #8
  %2 = call ptr @memset(ptr %value, i32 255, i32 52)
  %call2 = call ptr @get_options(ptr noundef %buf, i32 noundef 13, ptr noundef nonnull %value) #8
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %6 = add i32 %4, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %6)
  %7 = icmp ult i32 %6, -7
  %8 = or i1 %7, %tobool.not
  br i1 %8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %4, -1
  %arrayidx5 = getelementptr [13 x i32], ptr %value, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr [13 x i32], ptr %value, i32 0, i32 %4
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %or = or i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp7.not = icmp eq i32 %or, 0
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tsl2772_chip_status = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %tsl2772_chip_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tsl2772_chip_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp10 = icmp eq i32 %14, 1
  br i1 %cmp10, label %if.then11, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %tsl2772_chip_status.i = getelementptr inbounds %struct.tsl2772_chip, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %tsl2772_chip_status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %tsl2772_chip_status.i, align 4
  %client.i.i = getelementptr inbounds %struct.tsl2772_chip, ptr %16, i32 0, i32 3
  %18 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i.i, align 4
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -128, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %tsl2772_chip_off.exit.thread, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

tsl2772_chip_off.exit.thread:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %cleanup

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %tsl2772_device_lux = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 16
  %22 = call ptr @memset(ptr %tsl2772_device_lux, i32 0, i32 48)
  %arrayidx20 = getelementptr inbounds [13 x i32], ptr %value, i32 0, i32 1
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  %mul = shl i32 %24, 2
  %25 = call ptr @memcpy(ptr %tsl2772_device_lux, ptr %arrayidx20, i32 %mul)
  %call22 = call fastcc i32 @tsl2772_invoke_change(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  %call22.len = select i1 %cmp23, i32 %call22, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %tsl2772_chip_off.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call22.len, %if.end16 ], [ %call.i.i, %tsl2772_chip_off.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_proximity0_calibrate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %prox_history.i = alloca [201 x i32], align 4
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !221
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 804, ptr nonnull %prox_history.i) #8
  %5 = call ptr @memset(ptr %prox_history.i, i32 255, i32 804)
  %prox_max_samples_cal.i = getelementptr inbounds %struct.tsl2772_chip, ptr %4, i32 0, i32 7, i32 17
  %6 = ptrtoint ptr %prox_max_samples_cal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prox_max_samples_cal.i, align 4
  %8 = add i32 %7, -201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -200, i32 %8)
  %9 = icmp ult i32 %8, -200
  br i1 %9, label %if.end.tsl2772_prox_cal.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.tsl2772_prox_cal.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_prox_cal.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  %prox_data.i = getelementptr inbounds %struct.tsl2772_chip, ptr %4, i32 0, i32 5
  br label %for.body.i

for.cond11.preheader.i:                           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1458.i = icmp sgt i32 %14, 0
  br i1 %cmp1458.i, label %for.cond11.preheader.i.for.body16.i_crit_edge, label %for.cond11.preheader.i.tsl2772_prox_cal.exit_crit_edge

for.cond11.preheader.i.tsl2772_prox_cal.exit_crit_edge: ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_prox_cal.exit

for.cond11.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond11.preheader.i
  br label %for.body16.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end10.i.for.body.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 15000, i32 noundef 17500, i32 noundef 2) #8
  %call7.i = call fastcc i32 @tsl2772_get_prox(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %for.body.i.tsl2772_prox_cal.exit.thread_crit_edge, label %if.end10.i

for.body.i.tsl2772_prox_cal.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_prox_cal.exit.thread

if.end10.i:                                       ; preds = %for.body.i
  %10 = ptrtoint ptr %prox_data.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %prox_data.i, align 8
  %conv.i = zext i16 %11 to i32
  %arrayidx.i = getelementptr [201 x i32], ptr %prox_history.i, i32 0, i32 %i.057.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %13 = ptrtoint ptr %prox_max_samples_cal.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prox_max_samples_cal.i, align 4
  %cmp6.i = icmp slt i32 %inc.i, %14
  br i1 %cmp6.i, label %if.end10.i.for.body.i_crit_edge, label %for.cond11.preheader.i

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond11.preheader.i.for.body16.i_crit_edge
  %sample_sum.061.i = phi i32 [ %add.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond11.preheader.i.for.body16.i_crit_edge ]
  %max.060.i = phi i32 [ %17, %for.body16.i.for.body16.i_crit_edge ], [ -2147483648, %for.cond11.preheader.i.for.body16.i_crit_edge ]
  %i.159.i = phi i32 [ %inc22.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond11.preheader.i.for.body16.i_crit_edge ]
  %arrayidx17.i = getelementptr [201 x i32], ptr %prox_history.i, i32 0, i32 %i.159.i
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17.i, align 4
  %add.i = add i32 %16, %sample_sum.061.i
  %17 = call i32 @llvm.smax.i32(i32 %max.060.i, i32 %16) #8
  %inc22.i = add nuw nsw i32 %i.159.i, 1
  %exitcond.not.i = icmp eq i32 %inc22.i, %14
  br i1 %exitcond.not.i, label %for.end23.loopexit.i, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16.i

for.end23.loopexit.i:                             ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = shl i32 %17, 1
  br label %tsl2772_prox_cal.exit

tsl2772_prox_cal.exit.thread:                     ; preds = %for.body.i.tsl2772_prox_cal.exit.thread_crit_edge, %if.end.tsl2772_prox_cal.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.tsl2772_prox_cal.exit.thread_crit_edge ], [ %call7.i, %for.body.i.tsl2772_prox_cal.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 804, ptr nonnull %prox_history.i) #8
  br label %cleanup

tsl2772_prox_cal.exit:                            ; preds = %for.end23.loopexit.i, %for.cond11.preheader.i.tsl2772_prox_cal.exit_crit_edge
  %max.0.lcssa.i = phi i32 [ 0, %for.cond11.preheader.i.tsl2772_prox_cal.exit_crit_edge ], [ %phi.bo.i, %for.end23.loopexit.i ]
  %sample_sum.0.lcssa.i = phi i32 [ 0, %for.cond11.preheader.i.tsl2772_prox_cal.exit_crit_edge ], [ %add.i, %for.end23.loopexit.i ]
  %div.i = sdiv i32 %sample_sum.0.lcssa.i, %14
  %sub.i = sub i32 %max.0.lcssa.i, %div.i
  %prox_thres_high.i = getelementptr inbounds %struct.tsl2772_chip, ptr %4, i32 0, i32 7, i32 15
  %18 = ptrtoint ptr %prox_thres_high.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %prox_thres_high.i, align 4
  %call27.i = call fastcc i32 @tsl2772_invoke_change(ptr noundef %add.ptr.i) #8
  call void @llvm.lifetime.end.p0(i64 804, ptr nonnull %prox_history.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp = icmp slt i32 %call27.i, 0
  br i1 %cmp, label %tsl2772_prox_cal.exit.cleanup_crit_edge, label %if.end5

tsl2772_prox_cal.exit.cleanup_crit_edge:          ; preds = %tsl2772_prox_cal.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %tsl2772_prox_cal.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call fastcc i32 @tsl2772_invoke_change(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  %call6.len = select i1 %cmp7, i32 %call6, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %tsl2772_prox_cal.exit.cleanup_crit_edge, %tsl2772_prox_cal.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call27.i, %tsl2772_prox_cal.exit.cleanup_crit_edge ], [ %call6.len, %if.end5 ], [ %retval.0.i.ph, %tsl2772_prox_cal.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsl2772_get_prox(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %prox_mutex = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %prox_mutex, i32 noundef 0) #8
  %client.i = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tsl2772_read_status.exit.thread, label %if.end

tsl2772_read_status.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call.i) #11
  br label %prox_poll_err

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge24
    i32 2, label %if.end.sw.bb_crit_edge25
    i32 3, label %if.end.sw.bb_crit_edge26
    i32 4, label %if.end.sw.bb_crit_edge27
    i32 5, label %if.end.sw.bb4_crit_edge
    i32 6, label %if.end.sw.bb4_crit_edge28
    i32 7, label %if.end.sw.bb4_crit_edge29
    i32 8, label %if.end.sw.bb4_crit_edge30
    i32 9, label %if.end.sw.bb4_crit_edge31
    i32 10, label %if.end.sw.bb4_crit_edge32
  ]

if.end.sw.bb4_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb_crit_edge27:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge26:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge25:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge24:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge24, %if.end.sw.bb_crit_edge25, %if.end.sw.bb_crit_edge26, %if.end.sw.bb_crit_edge27
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.prox_poll_err_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.prox_poll_err_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %prox_poll_err

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge28, %if.end.sw.bb4_crit_edge29, %if.end.sw.bb4_crit_edge30, %if.end.sw.bb4_crit_edge31, %if.end.sw.bb4_crit_edge32
  %and5 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %sw.bb4.prox_poll_err_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4.prox_poll_err_crit_edge:                   ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %prox_poll_err

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %call9 = tail call fastcc i32 @tsl2772_read_autoinc_regs(ptr noundef %1, i32 noundef 24, i32 noundef 25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %sw.epilog.prox_poll_err_crit_edge, label %if.end12

sw.epilog.prox_poll_err_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %prox_poll_err

if.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %call9 to i16
  %prox_data = getelementptr inbounds %struct.tsl2772_chip, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %prox_data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %prox_data, align 8
  br label %prox_poll_err

prox_poll_err:                                    ; preds = %if.end12, %sw.epilog.prox_poll_err_crit_edge, %sw.bb4.prox_poll_err_crit_edge, %sw.bb.prox_poll_err_crit_edge, %tsl2772_read_status.exit.thread
  %ret.0 = phi i32 [ %call9, %sw.epilog.prox_poll_err_crit_edge ], [ %call9, %if.end12 ], [ -22, %sw.bb.prox_poll_err_crit_edge ], [ -22, %sw.bb4.prox_poll_err_crit_edge ], [ %call.i, %tsl2772_read_status.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %prox_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %tsl2772_chip_status.i = getelementptr inbounds %struct.tsl2772_chip, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %tsl2772_chip_status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %tsl2772_chip_status.i, align 4
  %client.i.i = getelementptr inbounds %struct.tsl2772_chip, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -128, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.tsl2772_chip_off.exit_crit_edge

entry.tsl2772_chip_off.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tsl2772_chip_off.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %call.i.i) #11
  br label %tsl2772_chip_off.exit

tsl2772_chip_off.exit:                            ; preds = %do.end.i.i, %entry.tsl2772_chip_off.exit_crit_edge
  %supplies = getelementptr inbounds %struct.tsl2772_chip, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsl2772_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %supplies = getelementptr inbounds %struct.tsl2772_chip, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 28000, i32 noundef 2) #8
  %call3 = tail call fastcc i32 @tsl2772_chip_on(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !73, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !132, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !180, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !208, !210}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__initcall__kmod_tsl2772__292_1942_tsl2772_driver_init6, !1, !"__initcall__kmod_tsl2772__292_1942_tsl2772_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/tsl2772.c", i32 1942, i32 1}
!2 = !{ptr @__exitcall_tsl2772_driver_exit, !1, !"__exitcall_tsl2772_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/tsl2772.c", i32 1944, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/tsl2772.c", i32 1945, i32 1}
!7 = !{ptr @__UNIQUE_ID_description295, !8, !"__UNIQUE_ID_description295", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/tsl2772.c", i32 1946, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/iio/light/tsl2772.c", i32 1947, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/tsl2772.c", i32 1934, i32 11}
!14 = !{ptr @tsl2772_driver, !15, !"tsl2772_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/tsl2772.c", i32 1932, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/tsl2772.c", i32 1773, i32 46}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/light/tsl2772.c", i32 1774, i32 48}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/light/tsl2772.c", i32 1780, i32 44}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/tsl2772.c", i32 1784, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tsl2772_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @tsl2772_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/tsl2772.c", i32 1793, i32 3}
!32 = !{ptr @tsl2772_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tsl2772_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/tsl2772.c", i32 1806, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tsl2772_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @tsl2772_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/tsl2772.c", i32 1814, i32 3}
!41 = !{ptr @tsl2772_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tsl2772_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @tsl2772_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/tsl2772.c", i32 1820, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tsl2772_probe.__key.20, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/tsl2772.c", i32 1821, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/tsl2772.c", i32 1842, i32 7}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/tsl2772.c", i32 1845, i32 4}
!53 = !{ptr @tsl2772_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tsl2772_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @tsl2772_chip_info_tbl, !56, !"tsl2772_chip_info_tbl", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/tsl2772.c", i32 1515, i32 39}
!57 = !{ptr @tsl2772_events, !58, !"tsl2772_events", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/tsl2772.c", i32 1498, i32 36}
!59 = !{ptr @tsl2772_device_info, !60, !"tsl2772_device_info", i1 false, i1 false}
!60 = !{!"../drivers/iio/light/tsl2772.c", i32 1490, i32 30}
!61 = !{ptr @tsl2772_device_attr_group_tbl, !62, !"tsl2772_device_attr_group_tbl", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/tsl2772.c", i32 1460, i32 37}
!63 = !{ptr @tsl2772_ALS_device_attrs, !64, !"tsl2772_ALS_device_attrs", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/tsl2772.c", i32 1428, i32 26}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/tsl2772.c", i32 1356, i32 8}
!67 = !{ptr @dev_attr_in_illuminance0_target_input, !66, !"dev_attr_in_illuminance0_target_input", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/tsl2772.c", i32 935, i32 35}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/tsl2772.c", i32 341, i32 3}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tsl2772_write_control_reg._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @tsl2772_write_control_reg._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/tsl2772.c", i32 1358, i32 8}
!77 = !{ptr @dev_attr_in_illuminance0_calibrate, !76, !"dev_attr_in_illuminance0_calibrate", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/light/tsl2772.c", i32 663, i32 3}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tsl2772_als_calibrate._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tsl2772_als_calibrate._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/light/tsl2772.c", i32 671, i32 3}
!85 = !{ptr @tsl2772_als_calibrate._entry.33, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tsl2772_als_calibrate._entry_ptr.35, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/light/tsl2772.c", i32 676, i32 3}
!89 = !{ptr @tsl2772_als_calibrate._entry.36, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tsl2772_als_calibrate._entry_ptr.38, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/light/tsl2772.c", i32 684, i32 3}
!93 = !{ptr @tsl2772_als_calibrate._entry.39, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @tsl2772_als_calibrate._entry_ptr.41, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/light/tsl2772.c", i32 419, i32 3}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @tsl2772_get_lux._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @tsl2772_get_lux._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/light/tsl2772.c", i32 430, i32 3}
!102 = !{ptr @tsl2772_get_lux._entry.44, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tsl2772_get_lux._entry_ptr.46, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/light/tsl2772.c", i32 327, i32 3}
!106 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @tsl2772_read_status._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @tsl2772_read_status._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/light/tsl2772.c", i32 359, i32 3}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @tsl2772_read_autoinc_regs._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @tsl2772_read_autoinc_regs._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/light/tsl2772.c", i32 368, i32 3}
!116 = !{ptr @tsl2772_read_autoinc_regs._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @tsl2772_read_autoinc_regs._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @tsl2772_read_autoinc_regs._entry.54, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/iio/light/tsl2772.c", i32 378, i32 3}
!120 = !{ptr @tsl2772_read_autoinc_regs._entry_ptr.55, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/light/tsl2772.c", i32 389, i32 3}
!123 = !{ptr @tsl2772_read_autoinc_regs._entry.56, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @tsl2772_read_autoinc_regs._entry_ptr.58, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/light/tsl2772.c", i32 1362, i32 8}
!127 = !{ptr @dev_attr_in_illuminance0_lux_table, !126, !"dev_attr_in_illuminance0_lux_table", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/light/tsl2772.c", i32 989, i32 57}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/light/tsl2772.c", i32 1003, i32 56}
!132 = !{ptr @tsl2772_PRX_device_attrs, !133, !"tsl2772_PRX_device_attrs", i1 false, i1 false}
!133 = !{!"../drivers/iio/light/tsl2772.c", i32 1435, i32 26}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/light/tsl2772.c", i32 1360, i32 8}
!136 = !{ptr @dev_attr_in_proximity0_calibrate, !135, !"dev_attr_in_proximity0_calibrate", i1 false, i1 false}
!137 = !{ptr @tsl2772_ALSPRX_device_attrs, !138, !"tsl2772_ALSPRX_device_attrs", i1 false, i1 false}
!138 = !{!"../drivers/iio/light/tsl2772.c", i32 1440, i32 26}
!139 = !{ptr @tsl2772_PRX2_device_attrs, !140, !"tsl2772_PRX2_device_attrs", i1 false, i1 false}
!140 = !{!"../drivers/iio/light/tsl2772.c", i32 1447, i32 26}
!141 = !{ptr @tsl2772_ALSPRX2_device_attrs, !142, !"tsl2772_ALSPRX2_device_attrs", i1 false, i1 false}
!142 = !{!"../drivers/iio/light/tsl2772.c", i32 1452, i32 26}
!143 = !{ptr @tsl2772_als_gain, !144, !"tsl2772_als_gain", i1 false, i1 false}
!144 = !{!"../drivers/iio/light/tsl2772.c", i32 265, i32 18}
!145 = !{ptr @tsl2772_prox_gain, !146, !"tsl2772_prox_gain", i1 false, i1 false}
!146 = !{!"../drivers/iio/light/tsl2772.c", i32 272, i32 18}
!147 = !{ptr @tsl2772_int_time_avail, !148, !"tsl2772_int_time_avail", i1 false, i1 false}
!148 = !{!"../drivers/iio/light/tsl2772.c", i32 279, i32 18}
!149 = !{ptr @tsl2772_int_calibscale_avail, !150, !"tsl2772_int_calibscale_avail", i1 false, i1 false}
!150 = !{!"../drivers/iio/light/tsl2772.c", i32 293, i32 12}
!151 = !{ptr @tsl2772_prox_calibscale_avail, !152, !"tsl2772_prox_calibscale_avail", i1 false, i1 false}
!152 = !{!"../drivers/iio/light/tsl2772.c", i32 295, i32 12}
!153 = !{ptr @device_channel_config, !154, !"device_channel_config", i1 false, i1 false}
!154 = !{!"../drivers/iio/light/tsl2772.c", i32 306, i32 17}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/light/tsl2772.c", i32 1421, i32 3}
!157 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @tsl2772_event_handler._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @tsl2772_event_handler._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @tsl2772_default_settings, !161, !"tsl2772_default_settings", i1 false, i1 false}
!161 = !{!"../drivers/iio/light/tsl2772.c", i32 242, i32 38}
!162 = !{ptr @tsl2772_default_lux_table_group, !163, !"tsl2772_default_lux_table_group", i1 false, i1 false}
!163 = !{!"../drivers/iio/light/tsl2772.c", i32 228, i32 34}
!164 = !{ptr @tsl2x71_lux_table, !165, !"tsl2x71_lux_table", i1 false, i1 false}
!165 = !{!"../drivers/iio/light/tsl2772.c", i32 198, i32 33}
!166 = !{ptr @tmd2x71_lux_table, !167, !"tmd2x71_lux_table", i1 false, i1 false}
!167 = !{!"../drivers/iio/light/tsl2772.c", i32 204, i32 33}
!168 = !{ptr @tsl2x72_lux_table, !169, !"tsl2x72_lux_table", i1 false, i1 false}
!169 = !{!"../drivers/iio/light/tsl2772.c", i32 210, i32 33}
!170 = !{ptr @tmd2x72_lux_table, !171, !"tmd2x72_lux_table", i1 false, i1 false}
!171 = !{!"../drivers/iio/light/tsl2772.c", i32 216, i32 33}
!172 = !{ptr @apds9930_lux_table, !173, !"apds9930_lux_table", i1 false, i1 false}
!173 = !{!"../drivers/iio/light/tsl2772.c", i32 222, i32 33}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iio/light/tsl2772.c", i32 555, i32 38}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/iio/light/tsl2772.c", i32 566, i32 2}
!178 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @tsl2772_read_prox_led_current._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @tsl2772_read_prox_led_current._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @tsl2772_led_currents, !182, !"tsl2772_led_currents", i1 false, i1 false}
!182 = !{!"../drivers/iio/light/tsl2772.c", i32 157, i32 18}
!183 = !{ptr @.str.68, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/light/tsl2772.c", i32 579, i32 45}
!185 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/light/tsl2772.c", i32 590, i32 3}
!187 = !{ptr @.str.70, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @tsl2772_read_prox_diodes._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @tsl2772_read_prox_diodes._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.72, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/iio/light/tsl2772.c", i32 603, i32 4}
!192 = !{ptr @tsl2772_read_prox_diodes._entry.71, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tsl2772_read_prox_diodes._entry_ptr.73, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.74, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/iio/light/tsl2772.c", i32 747, i32 3}
!196 = !{ptr @.str.75, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @tsl2772_chip_on._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @tsl2772_chip_on._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.77, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/iio/light/tsl2772.c", i32 784, i32 4}
!201 = !{ptr @tsl2772_chip_on._entry.76, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @tsl2772_chip_on._entry_ptr.78, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @tsl2772_chip_on._entry.79, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/iio/light/tsl2772.c", i32 809, i32 3}
!205 = !{ptr @tsl2772_chip_on._entry_ptr.80, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @tsl2772_of_match, !207, !"tsl2772_of_match", i1 false, i1 false}
!207 = !{!"../drivers/iio/light/tsl2772.c", i32 1911, i32 34}
!208 = !{ptr @tsl2772_pm_ops, !209, !"tsl2772_pm_ops", i1 false, i1 false}
!209 = !{!"../drivers/iio/light/tsl2772.c", i32 1927, i32 32}
!210 = !{ptr @tsl2772_idtable, !211, !"tsl2772_idtable", i1 false, i1 false}
!211 = !{!"../drivers/iio/light/tsl2772.c", i32 1894, i32 35}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"auto-init"}
!222 = !{i8 0, i8 2}
