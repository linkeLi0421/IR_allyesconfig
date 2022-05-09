; ModuleID = '/llk/IR_all_yes/drivers/iio/humidity/htu21.c_pt.bc'
source_filename = "../drivers/iio/humidity/htu21.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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

@__initcall__kmod_htu21__288_255_htu21_driver_init6 = internal global ptr @htu21_driver_init, section ".initcall6.init", align 4
@htu21_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @htu21_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @htu21_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @htu21_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_htu21_driver_exit = internal global ptr @htu21_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [80 x i8] c"htu21.description=Measurement-Specialties htu21 temperature and humidity driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [65 x i8] c"htu21.author=William Markezana <william.markezana@meas-spec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [67 x i8] c"htu21.author=Ludovic Tancerel <ludovic.tancerel@maplehightech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [38 x i8] c"htu21.file=drivers/iio/humidity/htu21\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"htu21.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"htu21\00", [26 x i8] zeroinitializer }, align 32
@htu21_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"meas,htu21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"meas,ms8607-humidity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@htu21_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"htu21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ms8607-humidity\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@htu21_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Adapter does not support some i2c transaction\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"htu21_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/humidity/htu21.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@htu21_probe._entry_ptr = internal global ptr @htu21_probe._entry, section ".printk_index", align 4
@htu21_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev_data->lock\00", [16 x i8] zeroinitializer }, align 32
@htu21_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @htu21_attribute_group, ptr @htu21_read_raw, ptr null, ptr null, ptr @htu21_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ms8607_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@htu21_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@htu21_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 227, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Serial number : %llx\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@htu21_probe._entry_ptr.10 = internal global ptr @htu21_probe._entry.7, section ".printk_index", align 4
@htu21_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @htu21_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@htu21_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr @iio_dev_attr_battery_low, ptr @iio_dev_attr_heater_enable, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @htu21_show_samp_freq, %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_battery_low = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @htu21_show_battery_low, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_heater_enable = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @htu21_show_heater, ptr @htu21_write_heater }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@htu21_show_samp_freq = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"20 40 70 120\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"battery_low\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"heater_enable\00", [18 x i8] zeroinitializer }, align 32
@htu21_samp_freq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 20, i32 40, i32 70, i32 120], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 12]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 18]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 20, i64 40, i64 70, i64 120]
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"htu21_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 246, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 250, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"htu21_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 239, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"htu21_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 232, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 192, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 204, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"htu21_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 174, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"ms8607_channels\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 121, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"htu21_channels\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 104, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 227, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"htu21_attribute_group\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 170, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"htu21_attributes\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 163, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"iio_dev_attr_battery_low\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"iio_dev_attr_heater_enable\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [21 x i8] c"htu21_show_samp_freq\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 37, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 157, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 158, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 160, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"htu21_samp_freq\00", align 1
@___asan_gen_.98 = private constant [32 x i8] c"../drivers/iio/humidity/htu21.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 35, i32 18 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_htu21_driver_exit, ptr @__initcall__kmod_htu21__288_255_htu21_driver_init6, ptr @htu21_driver_exit, ptr @htu21_probe._entry, ptr @htu21_probe._entry.7, ptr @htu21_probe._entry_ptr, ptr @htu21_probe._entry_ptr.10, ptr @htu21_driver, ptr @.str, ptr @htu21_of_match, ptr @htu21_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @htu21_probe.__key, ptr @.str.6, ptr @htu21_info, ptr @ms8607_channels, ptr @htu21_channels, ptr @.str.8, ptr @.str.9, ptr @htu21_attribute_group, ptr @htu21_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @iio_dev_attr_battery_low, ptr @iio_dev_attr_heater_enable, ptr @htu21_show_samp_freq, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @htu21_samp_freq], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms8607_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_battery_low to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_heater_enable to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_show_samp_freq to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htu21_samp_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @htu21_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @htu21_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @htu21_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @htu21_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htu21_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %serial_number = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %serial_number) #5
  %0 = ptrtoint ptr %serial_number to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %serial_number, align 8, !annotation !68
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
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @htu21_probe.__key) #5
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @htu21_info, ptr %info, align 8
  %name11 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %12 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %id, ptr %name11, align 8
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call2, align 8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  %spec.select = select i1 %cmp, ptr @ms8607_channels, ptr @htu21_channels
  %spec.select57 = select i1 %cmp, i32 1, i32 2
  %16 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select, ptr %16, align 8
  %18 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select57, ptr %18, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @ms_sensors_reset(ptr noundef %client, i8 noundef zeroext -2, i32 noundef 15000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %call20 = call i32 @ms_sensors_read_serial(ptr noundef %client, ptr noundef nonnull %serial_number) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %serial_number to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %serial_number, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8, i64 noundef %22) #8
  %call29 = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end19.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call29, %do.end26 ], [ -95, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call16, %if.end5.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ]
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
define internal i32 @htu21_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %temperature = alloca i32, align 4
  %humidity = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #5
  %0 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temperature, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %humidity) #5
  %1 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %humidity, align 4, !annotation !68
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 12, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 9, label %sw.bb1
    i32 18, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %call2 = call i32 @ms_sensors_ht_read_temperature(ptr noundef %3, ptr noundef nonnull %temperature) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.bb1.cleanup.sink.split_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %sw.bb
  %call4 = call i32 @ms_sensors_ht_read_humidity(ptr noundef %3, ptr noundef nonnull %humidity) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %sw.bb3.cleanup.sink.split_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3.cleanup.sink.split_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %res_index = getelementptr inbounds %struct.ms_ht_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %res_index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %res_index, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [4 x i32], ptr @htu21_samp_freq, i32 0, i32 %idxprom
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb8, %sw.bb3.cleanup.sink.split_crit_edge, %sw.bb1.cleanup.sink.split_crit_edge
  %.sink.in = phi ptr [ %arrayidx, %sw.bb8 ], [ %temperature, %sw.bb1.cleanup.sink.split_crit_edge ], [ %humidity, %sw.bb3.cleanup.sink.split_crit_edge ]
  %10 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink = load i32, ptr %.sink.in, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call4, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %humidity) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htu21_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %val, label %while.cond.preheader.cleanup_crit_edge [
    i32 120, label %while.cond.preheader.if.end4_crit_edge
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
define internal i32 @htu21_show_battery_low(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htu21_show_heater(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i32 @ms_sensors_show_heater(ptr noundef %1, ptr noundef %buf) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htu21_write_heater(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i32 @ms_sensors_write_heater(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_show_heater(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_write_heater(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_ht_read_temperature(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_sensors_ht_read_humidity(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !41, !43, !45, !46, !48, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_htu21__288_255_htu21_driver_init6, !1, !"__initcall__kmod_htu21__288_255_htu21_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/humidity/htu21.c", i32 255, i32 1}
!2 = !{ptr @__exitcall_htu21_driver_exit, !1, !"__exitcall_htu21_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/iio/humidity/htu21.c", i32 257, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/humidity/htu21.c", i32 258, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/iio/humidity/htu21.c", i32 259, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/iio/humidity/htu21.c", i32 260, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/humidity/htu21.c", i32 250, i32 14}
!14 = !{ptr @htu21_driver, !15, !"htu21_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/humidity/htu21.c", i32 246, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/humidity/htu21.c", i32 192, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @htu21_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @htu21_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @htu21_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/humidity/htu21.c", i32 204, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/humidity/htu21.c", i32 227, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @htu21_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @htu21_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @htu21_info, !33, !"htu21_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/humidity/htu21.c", i32 174, i32 30}
!34 = !{ptr @htu21_attribute_group, !35, !"htu21_attribute_group", i1 false, i1 false}
!35 = !{!"../drivers/iio/humidity/htu21.c", i32 170, i32 37}
!36 = !{ptr @htu21_attributes, !37, !"htu21_attributes", i1 false, i1 false}
!37 = !{!"../drivers/iio/humidity/htu21.c", i32 163, i32 26}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/humidity/htu21.c", i32 157, i32 8}
!40 = !{ptr @iio_const_attr_sampling_frequency_available, !39, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!41 = !{ptr @htu21_show_samp_freq, !42, !"htu21_show_samp_freq", i1 false, i1 false}
!42 = !{!"../drivers/iio/humidity/htu21.c", i32 37, i32 19}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/humidity/htu21.c", i32 158, i32 8}
!45 = !{ptr @iio_dev_attr_battery_low, !44, !"iio_dev_attr_battery_low", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/humidity/htu21.c", i32 160, i32 8}
!48 = !{ptr @iio_dev_attr_heater_enable, !47, !"iio_dev_attr_heater_enable", i1 false, i1 false}
!49 = !{ptr @htu21_samp_freq, !50, !"htu21_samp_freq", i1 false, i1 false}
!50 = !{!"../drivers/iio/humidity/htu21.c", i32 35, i32 18}
!51 = !{ptr @ms8607_channels, !52, !"ms8607_channels", i1 false, i1 false}
!52 = !{!"../drivers/iio/humidity/htu21.c", i32 121, i32 35}
!53 = !{ptr @htu21_channels, !54, !"htu21_channels", i1 false, i1 false}
!54 = !{!"../drivers/iio/humidity/htu21.c", i32 104, i32 35}
!55 = !{ptr @htu21_of_match, !56, !"htu21_of_match", i1 false, i1 false}
!56 = !{!"../drivers/iio/humidity/htu21.c", i32 239, i32 34}
!57 = !{ptr @htu21_id, !58, !"htu21_id", i1 false, i1 false}
!58 = !{!"../drivers/iio/humidity/htu21.c", i32 232, i32 35}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
