; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/tsys02d.c_pt.bc'
source_filename = "../drivers/iio/temperature/tsys02d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ms_ht_dev = type { ptr, %struct.mutex, i8 }

@__initcall__kmod_tsys02d__288_184_tsys02d_driver_init6 = internal global ptr @tsys02d_driver_init, section ".initcall6.init", align 4
@tsys02d_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tsys02d_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tsys02d_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tsys02d_driver_exit = internal global ptr @tsys02d_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [71 x i8] c"tsys02d.description=Measurement-Specialties tsys02d temperature driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [67 x i8] c"tsys02d.author=William Markezana <william.markezana@meas-spec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [69 x i8] c"tsys02d.author=Ludovic Tancerel <ludovic.tancerel@maplehightech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [45 x i8] c"tsys02d.file=drivers/iio/temperature/tsys02d\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"tsys02d.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsys02d\00", [24 x i8] zeroinitializer }, align 32
@tsys02d_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tsys02d\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tsys02d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Adapter does not support some i2c transaction\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsys02d_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/temperature/tsys02d.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsys02d_probe._entry_ptr = internal global ptr @tsys02d_probe._entry, section ".printk_index", align 4
@tsys02d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev_data->lock\00", [16 x i8] zeroinitializer }, align 32
@tsys02d_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @tsys02d_attribute_group, ptr @tsys02d_read_raw, ptr null, ptr null, ptr @tsys02d_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tsys02d_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@tsys02d_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 165, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Serial number : %llx\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsys02d_probe._entry_ptr.10 = internal global ptr @tsys02d_probe._entry.7, section ".printk_index", align 4
@tsys02d_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tsys02d_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@tsys02d_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr @iio_dev_attr_battery_low, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @tsys02d_show_samp_freq, %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_battery_low = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tsys02_read_battery_low, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tsys02d_show_samp_freq = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"20 40 70 140\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"battery_low\00", [20 x i8] zeroinitializer }, align 32
@tsys02d_samp_freq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 20, i32 40, i32 70, i32 140], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 12]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 20, i64 40, i64 70, i64 140]
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"tsys02d_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 176, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 180, i32 14 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"tsys02d_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 170, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 136, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 148, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"tsys02d_info\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 118, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"tsys02d_channels\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 86, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 165, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"tsys02d_attribute_group\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 114, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"tsys02d_attributes\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 108, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [25 x i8] c"iio_dev_attr_battery_low\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"tsys02d_show_samp_freq\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 27, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 104, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 105, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"tsys02d_samp_freq\00", align 1
@___asan_gen_.84 = private constant [37 x i8] c"../drivers/iio/temperature/tsys02d.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 25, i32 18 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_tsys02d_driver_exit, ptr @__initcall__kmod_tsys02d__288_184_tsys02d_driver_init6, ptr @tsys02d_driver_exit, ptr @tsys02d_probe._entry, ptr @tsys02d_probe._entry.7, ptr @tsys02d_probe._entry_ptr, ptr @tsys02d_probe._entry_ptr.10, ptr @tsys02d_driver, ptr @.str, ptr @tsys02d_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tsys02d_probe.__key, ptr @.str.6, ptr @tsys02d_info, ptr @tsys02d_channels, ptr @.str.8, ptr @.str.9, ptr @tsys02d_attribute_group, ptr @tsys02d_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @iio_dev_attr_battery_low, ptr @tsys02d_show_samp_freq, ptr @.str.11, ptr @.str.12, ptr @tsys02d_samp_freq], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_battery_low to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_show_samp_freq to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsys02d_samp_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsys02d_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tsys02d_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsys02d_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tsys02d_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsys02d_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %serial_number = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %serial_number) #5
  %0 = ptrtoint ptr %serial_number to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %serial_number, align 8, !annotation !61
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #5
  %and.i = and i32 %call.i.i, 68419584
  call void @__sanitizer_cov_trace_const_cmp4(i32 68419584, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68419584
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 100) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %8, align 4
  %res_index = getelementptr inbounds %struct.ms_ht_dev, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %res_index to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %res_index, align 4
  %lock = getelementptr inbounds %struct.ms_ht_dev, ptr %8, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tsys02d_probe.__key) #5
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tsys02d_info, ptr %info, align 8
  %name11 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %12 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %id, ptr %name11, align 8
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call2, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tsys02d_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %15 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %num_channels, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call12 = tail call i32 @ms_sensors_reset(ptr noundef %client, i8 noundef zeroext -2, i32 noundef 15000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call16 = call i32 @ms_sensors_read_serial(ptr noundef %client, ptr noundef nonnull %serial_number) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end22, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %serial_number to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %serial_number, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8, i64 noundef %18) #8
  %call25 = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end15.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call25, %do.end22 ], [ -95, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %if.end5.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %serial_number) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_reset(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_read_serial(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsys02d_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #5
  %0 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temperature, align 4, !annotation !61
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 12, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cond = icmp eq i32 %5, 9
  br i1 %cond, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %call2 = call i32 @ms_sensors_ht_read_temperature(ptr noundef %2, ptr noundef nonnull %temperature) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.bb1.cleanup.sink.split_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %res_index = getelementptr inbounds %struct.ms_ht_dev, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %res_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %res_index, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [4 x i32], ptr @tsys02d_samp_freq, i32 0, i32 %idxprom
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %sw.bb1.cleanup.sink.split_crit_edge
  %.sink.in = phi ptr [ %arrayidx, %sw.bb3 ], [ %temperature, %sw.bb1.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.sink = load i32, ptr %.sink.in, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsys02d_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %val, label %while.cond.preheader.cleanup_crit_edge [
    i32 140, label %while.cond.preheader.if.end4_crit_edge
    i32 70, label %if.end4.fold.split
    i32 40, label %if.end4.fold.split22
    i32 20, label %if.end4.fold.split23
  ]

while.cond.preheader.if.end4_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.fold.split:                               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4.fold.split22:                             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4.fold.split23:                             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %if.end4.fold.split23, %if.end4.fold.split22, %if.end4.fold.split, %while.cond.preheader.if.end4_crit_edge
  %dec.lcssa20 = phi i8 [ 3, %while.cond.preheader.if.end4_crit_edge ], [ 2, %if.end4.fold.split ], [ 1, %if.end4.fold.split22 ], [ 0, %if.end4.fold.split23 ]
  %lock = getelementptr inbounds %struct.ms_ht_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %res_index = getelementptr inbounds %struct.ms_ht_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %res_index to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %dec.lcssa20, ptr %res_index, align 4
  %call6 = tail call i32 @ms_sensors_write_resolution(ptr noundef %1, i8 noundef zeroext %dec.lcssa20) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %while.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsys02_read_battery_low(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i32 @ms_sensors_show_battery_low(ptr noundef %1, ptr noundef %buf) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_show_battery_low(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_ht_read_temperature(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_write_resolution(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !41, !43, !45, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_tsys02d__288_184_tsys02d_driver_init6, !1, !"__initcall__kmod_tsys02d__288_184_tsys02d_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/tsys02d.c", i32 184, i32 1}
!2 = !{ptr @__exitcall_tsys02d_driver_exit, !1, !"__exitcall_tsys02d_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/tsys02d.c", i32 186, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/tsys02d.c", i32 187, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/tsys02d.c", i32 188, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/iio/temperature/tsys02d.c", i32 189, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/tsys02d.c", i32 180, i32 14}
!14 = !{ptr @tsys02d_driver, !15, !"tsys02d_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/tsys02d.c", i32 176, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/temperature/tsys02d.c", i32 136, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tsys02d_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tsys02d_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tsys02d_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/temperature/tsys02d.c", i32 148, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/temperature/tsys02d.c", i32 165, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tsys02d_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @tsys02d_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tsys02d_info, !33, !"tsys02d_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/temperature/tsys02d.c", i32 118, i32 30}
!34 = !{ptr @tsys02d_attribute_group, !35, !"tsys02d_attribute_group", i1 false, i1 false}
!35 = !{!"../drivers/iio/temperature/tsys02d.c", i32 114, i32 37}
!36 = !{ptr @tsys02d_attributes, !37, !"tsys02d_attributes", i1 false, i1 false}
!37 = !{!"../drivers/iio/temperature/tsys02d.c", i32 108, i32 26}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/temperature/tsys02d.c", i32 104, i32 8}
!40 = !{ptr @iio_const_attr_sampling_frequency_available, !39, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!41 = !{ptr @tsys02d_show_samp_freq, !42, !"tsys02d_show_samp_freq", i1 false, i1 false}
!42 = !{!"../drivers/iio/temperature/tsys02d.c", i32 27, i32 19}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/temperature/tsys02d.c", i32 105, i32 8}
!45 = !{ptr @iio_dev_attr_battery_low, !44, !"iio_dev_attr_battery_low", i1 false, i1 false}
!46 = !{ptr @tsys02d_samp_freq, !47, !"tsys02d_samp_freq", i1 false, i1 false}
!47 = !{!"../drivers/iio/temperature/tsys02d.c", i32 25, i32 18}
!48 = !{ptr @tsys02d_channels, !49, !"tsys02d_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/temperature/tsys02d.c", i32 86, i32 35}
!50 = !{ptr @tsys02d_id, !51, !"tsys02d_id", i1 false, i1 false}
!51 = !{!"../drivers/iio/temperature/tsys02d.c", i32 170, i32 35}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
