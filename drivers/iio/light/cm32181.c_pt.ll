; ModuleID = '/llk/IR_all_yes/drivers/iio/light/cm32181.c_pt.bc'
source_filename = "../drivers/iio/light/cm32181.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.cm32181_chip = type { ptr, ptr, %struct.mutex, [4 x i16], i32, i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_cm32181__288_513_cm32181_driver_init6 = internal global ptr @cm32181_driver_init, section ".initcall6.init", align 4
@cm32181_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @cm32181_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cm32181_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cm32181_driver_exit = internal global ptr @cm32181_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"cm32181.author=Kevin Tsai <ktsai@capellamicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"cm32181.description=CM32181 ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"cm32181.file=drivers/iio/light/cm32181\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"cm32181.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cm32181\00", [24 x i8] zeroinitializer }, align 32
@cm32181_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"capella,cm3218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"capella,cm32181\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cm32181_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cm32181->lock\00", [17 x i8] zeroinitializer }, align 32
@cm32181_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262162, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@cm32181_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @cm32181_attribute_group, ptr @cm32181_read_raw, ptr null, ptr null, ptr @cm32181_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cm32181_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: register init failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cm32181_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/cm32181.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cm32181_probe._entry_ptr = internal global ptr @cm32181_probe._entry, section ".printk_index", align 4
@cm32181_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: regist device failed\0A\00", [38 x i8] zeroinitializer }, align 32
@cm32181_probe._entry_ptr.9 = internal global ptr @cm32181_probe._entry.7, section ".printk_index", align 4
@cm32181_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cm32181_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@cm32181_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_integration_time_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cm32181_get_it_available, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"in_illuminance_integration_time_available\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%06u \00", [24 x i8] zeroinitializer }, align 32
@cm3218_als_it_bits = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@cm3218_als_it_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 100000, i32 200000, i32 400000, i32 800000], [16 x i8] zeroinitializer }, align 32
@cm32181_als_it_bits = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 12, i32 8, i32 0, i32 1, i32 2, i32 3], [40 x i8] zeroinitializer }, align 32
@cm32181_als_it_values = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25000, i32 50000, i32 100000, i32 200000, i32 400000, i32 800000], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 24, i64 129, i64 130]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 18]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"cm32181_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 504, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 506, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"cm32181_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 489, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 467, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"cm32181_channels\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 404, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"cm32181_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 426, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 476, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 482, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [24 x i8] c"cm32181_attribute_group\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 422, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"cm32181_attributes\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 417, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant [55 x i8] c"iio_dev_attr_in_illuminance_integration_time_available\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 414, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 400, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"cm3218_als_it_bits\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 68, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"cm3218_als_it_values\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 69, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"cm32181_als_it_bits\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 72, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"cm32181_als_it_values\00", align 1
@___asan_gen_.85 = private constant [31 x i8] c"../drivers/iio/light/cm32181.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 73, i32 18 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cm32181_driver_exit, ptr @__initcall__kmod_cm32181__288_513_cm32181_driver_init6, ptr @cm32181_driver_exit, ptr @cm32181_probe._entry, ptr @cm32181_probe._entry.7, ptr @cm32181_probe._entry_ptr, ptr @cm32181_probe._entry_ptr.9, ptr @cm32181_driver, ptr @.str, ptr @cm32181_of_match, ptr @cm32181_probe.__key, ptr @.str.1, ptr @cm32181_channels, ptr @cm32181_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @cm32181_attribute_group, ptr @cm32181_attributes, ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr @.str.10, ptr @.str.11, ptr @cm3218_als_it_bits, ptr @cm3218_als_it_values, ptr @cm32181_als_it_bits, ptr @cm32181_als_it_values], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_integration_time_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3218_als_it_bits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3218_als_it_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_als_it_bits to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm32181_als_it_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cm32181_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cm32181_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cm32181_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cm32181_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm32181_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 136) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev4, align 4
  %lock = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cm32181_probe.__key) #7
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cm32181_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cm32181_info, ptr %info, align 8
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %name, align 8
  %12 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %call, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %14, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %dev_name.exit.cleanup.sink.split_crit_edge, label %if.end.i42

dev_name.exit.cleanup.sink.split_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i42:                                       ; preds = %dev_name.exit
  %trunc.i = trunc i32 %call.i to i8
  %15 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.end.i42.cleanup.sink.split_crit_edge [
    i8 24, label %if.end.i42.sw.epilog.i_crit_edge
    i8 -127, label %if.end.i42.sw.bb2.i_crit_edge
    i8 -126, label %if.end.i42.sw.bb2.i_crit_edge53
  ]

if.end.i42.sw.bb2.i_crit_edge53:                  ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.end.i42.sw.bb2.i_crit_edge:                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.end.i42.sw.epilog.i_crit_edge:                 ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i42.cleanup.sink.split_crit_edge:          ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb2.i:                                         ; preds = %if.end.i42.sw.bb2.i_crit_edge, %if.end.i42.sw.bb2.i_crit_edge53
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end.i42.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 6, %sw.bb2.i ], [ 4, %if.end.i42.sw.epilog.i_crit_edge ]
  %cm32181_als_it_bits.sink.i = phi ptr [ @cm32181_als_it_bits, %sw.bb2.i ], [ @cm3218_als_it_bits, %if.end.i42.sw.epilog.i_crit_edge ]
  %cm32181_als_it_values.sink.i = phi ptr [ @cm32181_als_it_values, %sw.bb2.i ], [ @cm3218_als_it_values, %if.end.i42.sw.epilog.i_crit_edge ]
  %num_als_it3.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %num_als_it3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %num_als_it3.i, align 4
  %als_it_bits4.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %als_it_bits4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cm32181_als_it_bits.sink.i, ptr %als_it_bits4.i, align 4
  %als_it_values5.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %als_it_values5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cm32181_als_it_values.sink.i, ptr %als_it_values5.i, align 4
  %conf_regs.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2048, ptr %conf_regs.i, align 4
  %init_regs_bitmap.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %init_regs_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %init_regs_bitmap.i, align 4
  %calibscale.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %calibscale.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100000, ptr %calibscale.i, align 4
  %lux_per_bit.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %lux_per_bit.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 500, ptr %lux_per_bit.i, align 4
  %lux_per_bit_base_it.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %lux_per_bit_base_it.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 800000, ptr %lux_per_bit_base_it.i, align 4
  %call9.i = tail call i32 @_find_next_bit_be(ptr noundef %init_regs_bitmap.i, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call9.i)
  %cmp1044.i = icmp slt i32 %call9.i, 4
  br i1 %cmp1044.i, label %sw.epilog.i.for.body.i_crit_edge, label %sw.epilog.i.if.end12_crit_edge

sw.epilog.i.if.end12_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %i.045.i = phi i32 [ %call19.i, %for.inc.i.for.body.i_crit_edge ], [ %call9.i, %sw.epilog.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.045.i to i8
  %arrayidx12.i = getelementptr %struct.cm32181_chip, ptr %1, i32 0, i32 3, i32 %i.045.i
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx12.i, align 2
  %call13.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %14, i8 noundef zeroext %conv.i, i16 noundef zeroext %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %for.body.i.cleanup.sink.split_crit_edge, label %for.inc.i

for.body.i.cleanup.sink.split_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc.i:                                        ; preds = %for.body.i
  %add.i = add nsw i32 %i.045.i, 1
  %call19.i = tail call i32 @_find_next_bit_be(ptr noundef %init_regs_bitmap.i, i32 noundef 4, i32 noundef %add.i) #7
  %cmp10.i = icmp slt i32 %call19.i, 4
  br i1 %cmp10.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end12_crit_edge

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end12:                                         ; preds = %for.inc.i.if.end12_crit_edge, %sw.epilog.i.if.end12_crit_edge
  %call13 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end12.cleanup.sink.split_crit_edge, %for.body.i.cleanup.sink.split_crit_edge, %if.end.i42.cleanup.sink.split_crit_edge, %dev_name.exit.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.2, %dev_name.exit.cleanup.sink.split_crit_edge ], [ @.str.2, %if.end.i42.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end12.cleanup.sink.split_crit_edge ], [ @.str.2, %for.body.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %dev_name.exit.cleanup.sink.split_crit_edge ], [ -19, %if.end.i42.cleanup.sink.split_crit_edge ], [ %call13, %if.end12.cleanup.sink.split_crit_edge ], [ %call13.i, %for.body.i.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.8.sink, ptr noundef nonnull @.str.3) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm32181_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 18, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %num_als_it.i.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %num_als_it.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_als_it.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20.i.i = icmp sgt i32 %6, 0
  br i1 %cmp20.i.i, label %for.body.lr.ph.i.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %sw.bb
  %conf_regs.i.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %conf_regs.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %conf_regs.i.i, align 4
  %9 = lshr i16 %8, 6
  %10 = and i16 %9, 15
  %conv5.i.i = zext i16 %10 to i32
  %als_it_bits.i.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %als_it_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %als_it_bits.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx6.i.i = getelementptr i32, ptr %12, i32 %i.021.i.i
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv5.i.i)
  %cmp7.i.i = icmp eq i32 %14, %conv5.i.i
  br i1 %cmp7.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %6
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i.i
  %als_it_values.i.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %als_it_values.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %als_it_values.i.i, align 4
  %arrayidx9.i.i = getelementptr i32, ptr %16, i32 %i.021.i.i
  %17 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.i.i, align 4
  %lux_per_bit.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %lux_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lux_per_bit.i, align 4
  %conv.i = sext i32 %20 to i64
  %lux_per_bit_base_it.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %lux_per_bit_base_it.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lux_per_bit_base_it.i, align 4
  %conv2.i = sext i32 %22 to i64
  %mul.i = mul nsw i64 %conv2.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !63

if.then168.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %18
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %mul.i) #11, !srcloc !64
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %23, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %call4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %div_u64.exit.i.cleanup_crit_edge, label %cm32181_get_lux.exit

div_u64.exit.i.cleanup_crit_edge:                 ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cm32181_get_lux.exit:                             ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9104.i = zext i32 %call4.i to i64
  %mul10.i = mul i64 %dividend.addr.0.i.i.i, %conv9104.i
  %calibscale.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %calibscale.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %calibscale.i, align 4
  %conv11.i = sext i32 %25 to i64
  %mul12.i = mul i64 %mul10.i, %conv11.i
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %mul12.i, i32 0) #11, !srcloc !65
  %asmresult.i.i.i48.i = extractvalue { i64, i32 } %26, 0
  %asmresult4.i.i.i49.i = extractvalue { i64, i32 } %26, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %mul12.i, i64 %asmresult.i.i.i48.i, i32 %asmresult4.i.i.i49.i) #11, !srcloc !66
  %asmresult10.i.i.i61.i = extractvalue { i64, i32 } %27, 0
  %div158.i.i66105.i = lshr i64 %asmresult10.i.i.i61.i, 16
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %div158.i.i66105.i, i32 0) #11, !srcloc !65
  %asmresult.i.i.i80.i = extractvalue { i64, i32 } %28, 0
  %asmresult4.i.i.i81.i = extractvalue { i64, i32 } %28, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %div158.i.i66105.i, i64 %asmresult.i.i.i80.i, i32 %asmresult4.i.i.i81.i) #11, !srcloc !66
  %asmresult10.i.i.i93.i = extractvalue { i64, i32 } %29, 0
  %div158.i.i98106.i = lshr i64 %asmresult10.i.i.i93.i, 16
  %30 = tail call i64 @llvm.umin.i64(i64 %div158.i.i98106.i, i64 65535) #7
  %conv19.i = trunc i64 %30 to i32
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv19.i, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %calibscale = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %calibscale to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %calibscale, align 4
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val, align 4
  %num_als_it.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %num_als_it.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_als_it.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp20.i = icmp sgt i32 %37, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb3
  %conf_regs.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %conf_regs.i, align 4
  %40 = lshr i16 %39, 6
  %41 = and i16 %40, 15
  %conv5.i = zext i16 %41 to i32
  %als_it_bits.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %als_it_bits.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %als_it_bits.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr i32, ptr %43, i32 %i.021.i
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv5.i)
  %cmp7.i = icmp eq i32 %45, %conv5.i
  br i1 %cmp7.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %als_it_values.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 10
  %46 = ptrtoint ptr %als_it_values.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %als_it_values.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %47, i32 %i.021.i
  %48 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx9.i, align 4
  %50 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %val2, align 4
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %37
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.then.i, %sw.bb3.cleanup_crit_edge, %sw.bb2, %cm32181_get_lux.exit, %div_u64.exit.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb2 ], [ 1, %cm32181_get_lux.exit ], [ -22, %entry.cleanup_crit_edge ], [ 2, %if.then.i ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call4.i, %div_u64.exit.i.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm32181_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 18, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %calibscale = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %calibscale to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %val, ptr %calibscale, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %num_als_it.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %num_als_it.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_als_it.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp35.i = icmp sgt i32 %7, 0
  br i1 %cmp35.i, label %for.body.lr.ph.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %sub43.i = add i32 %7, -1
  br label %cm32181_write_als_it.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb1
  %als_it_values.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %als_it_values.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %als_it_values.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %val2)
  %cmp2.not.i6 = icmp slt i32 %11, %val2
  br i1 %cmp2.not.i6, label %for.body.lr.ph.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.for.end.i.thread_crit_edge

for.body.lr.ph.i.for.end.i.thread_crit_edge:      ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.thread

for.body.lr.ph.i.for.inc.i_crit_edge:             ; preds = %for.body.lr.ph.i
  br label %for.inc.i

for.body.i:                                       ; preds = %for.inc.i
  %arrayidx.i = getelementptr i32, ptr %9, i32 %inc.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp slt i32 %13, %val2
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.lr.ph.i.for.inc.i_crit_edge
  %i.036.i7 = phi i32 [ %inc.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.036.i7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %7)
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %inc.i, %for.body.i.for.end.i_crit_edge ], [ %7, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %7)
  %cmp.i.le = icmp slt i32 %inc.i, %7
  %sub.i = add i32 %7, -1
  br i1 %cmp.i.le, label %for.end.i.for.end.i.thread_crit_edge, label %for.end.i.cm32181_write_als_it.exit_crit_edge

for.end.i.cm32181_write_als_it.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cm32181_write_als_it.exit

for.end.i.for.end.i.thread_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.thread

for.end.i.thread:                                 ; preds = %for.end.i.for.end.i.thread_crit_edge, %for.body.lr.ph.i.for.end.i.thread_crit_edge
  %i.0.lcssa.i14 = phi i32 [ %i.0.lcssa.i, %for.end.i.for.end.i.thread_crit_edge ], [ 0, %for.body.lr.ph.i.for.end.i.thread_crit_edge ]
  br label %cm32181_write_als_it.exit

cm32181_write_als_it.exit:                        ; preds = %for.end.i.thread, %for.end.i.cm32181_write_als_it.exit_crit_edge, %for.end.thread.i
  %14 = phi i32 [ %sub43.i, %for.end.thread.i ], [ %i.0.lcssa.i14, %for.end.i.thread ], [ %sub.i, %for.end.i.cm32181_write_als_it.exit_crit_edge ]
  %als_it_bits.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %als_it_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %als_it_bits.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %16, i32 %14
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.i, align 4
  %lock.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %conf_regs.i = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %conf_regs.i, align 4
  %21 = and i16 %20, -961
  %.tr.i = trunc i32 %18 to i16
  %22 = shl i16 %.tr.i, 6
  %conv16.i = or i16 %21, %22
  store i16 %conv16.i, ptr %conf_regs.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext 0, i16 noundef zeroext %conv16.i) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cm32181_write_als_it.exit, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %cm32181_write_als_it.exit ], [ %val, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm32181_get_it_available(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %num_als_it = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_als_it to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_als_it, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13 = icmp sgt i32 %3, 0
  br i1 %cmp13, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %als_it_values = getelementptr inbounds %struct.cm32181_chip, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %len.015 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.015
  %4 = ptrtoint ptr %als_it_values to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %als_it_values, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.11, i32 noundef %7)
  %add = add i32 %call2, %len.015
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %len.0.lcssa
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %add.ptr3, align 1
  %add5 = add i32 %len.0.lcssa, 1
  ret i32 %add5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_cm32181__288_513_cm32181_driver_init6, !1, !"__initcall__kmod_cm32181__288_513_cm32181_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/cm32181.c", i32 513, i32 1}
!2 = !{ptr @__exitcall_cm32181_driver_exit, !1, !"__exitcall_cm32181_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/cm32181.c", i32 515, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/cm32181.c", i32 516, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/cm32181.c", i32 517, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/cm32181.c", i32 506, i32 11}
!12 = !{ptr @cm32181_driver, !13, !"cm32181_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/cm32181.c", i32 504, i32 26}
!14 = !{ptr @cm32181_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/cm32181.c", i32 467, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/cm32181.c", i32 476, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cm32181_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cm32181_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/cm32181.c", i32 482, i32 3}
!27 = !{ptr @cm32181_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cm32181_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cm32181_channels, !30, !"cm32181_channels", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/cm32181.c", i32 404, i32 35}
!31 = !{ptr @cm32181_info, !32, !"cm32181_info", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/cm32181.c", i32 426, i32 30}
!33 = !{ptr @cm32181_attribute_group, !34, !"cm32181_attribute_group", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/cm32181.c", i32 422, i32 37}
!35 = !{ptr @cm32181_attributes, !36, !"cm32181_attributes", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/cm32181.c", i32 417, i32 26}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/cm32181.c", i32 414, i32 8}
!39 = !{ptr @iio_dev_attr_in_illuminance_integration_time_available, !38, !"iio_dev_attr_in_illuminance_integration_time_available", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/cm32181.c", i32 400, i32 29}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/cm32181.c", i32 401, i32 34}
!44 = !{ptr @cm3218_als_it_bits, !45, !"cm3218_als_it_bits", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/cm32181.c", i32 68, i32 18}
!46 = !{ptr @cm3218_als_it_values, !47, !"cm3218_als_it_values", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/cm32181.c", i32 69, i32 18}
!48 = !{ptr @cm32181_als_it_bits, !49, !"cm32181_als_it_bits", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/cm32181.c", i32 72, i32 18}
!50 = !{ptr @cm32181_als_it_values, !51, !"cm32181_als_it_values", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/cm32181.c", i32 73, i32 18}
!52 = !{ptr @cm32181_of_match, !53, !"cm32181_of_match", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/cm32181.c", i32 489, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2148984822, i64 2148985102, i64 2148985436, i64 2148985770}
!65 = !{i64 1499278, i64 1499305, i64 1499327, i64 1499355}
!66 = !{i64 1499686, i64 1499713, i64 1499746, i64 1499767, i64 1499794, i64 1499820}
