; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/mlx90614.c_pt.bc'
source_filename = "../drivers/iio/temperature/mlx90614.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mlx90614_data = type { ptr, %struct.mutex, ptr, i32 }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%union.i2c_smbus_data = type { i16, [32 x i8] }

@__initcall__kmod_mlx90614__296_669_mlx90614_driver_init6 = internal global ptr @mlx90614_driver_init, section ".initcall6.init", align 4
@mlx90614_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mlx90614_probe, ptr @mlx90614_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mlx90614_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx90614_pm_ops, ptr null, ptr null }, ptr @mlx90614_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mlx90614_driver_exit = internal global ptr @mlx90614_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [51 x i8] c"mlx90614.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [85 x i8] c"mlx90614.author=Vianney le Cl\C3\A9ment de Saint-Marcq <vianney.leclement@essensium.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [43 x i8] c"mlx90614.author=Crt Mori <cmo@melexis.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [79 x i8] c"mlx90614.description=Melexis MLX90614 contactless IR temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [47 x i8] c"mlx90614.file=drivers/iio/temperature/mlx90614\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [21 x i8] c"mlx90614.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mlx90614\00", [23 x i8] zeroinitializer }, align 32
@mlx90614_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melexis,mlx90614\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mlx90614_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mlx90614_pm_suspend, ptr @mlx90614_pm_resume, ptr @mlx90614_pm_suspend, ptr @mlx90614_pm_resume, ptr @mlx90614_pm_suspend, ptr @mlx90614_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx90614_pm_runtime_suspend, ptr @mlx90614_pm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlx90614_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mlx90614\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mlx90614_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@mlx90614_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mlx90614_attr_group, ptr @mlx90614_read_raw, ptr null, ptr null, ptr @mlx90614_write_raw, ptr null, ptr @mlx90614_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mlx90614_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx90614_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/temperature/mlx90614.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Found single sensor\00", [44 x i8] zeroinitializer }, align 32
@mlx90614_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 21, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 22, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 16778241, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 1, i32 22, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 16778241, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -64 }], [88 x i8] zeroinitializer }, align 32
@mlx90614_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Found dual sensor\00", [46 x i8] zeroinitializer }, align 32
@mlx90614_probe_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 475, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"i2c adapter does not support SMBUS_WRITE_BYTE, sleep disabled\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx90614_probe_wakeup\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx90614_probe_wakeup._entry_ptr = internal global ptr @mlx90614_probe_wakeup._entry, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@mlx90614_probe_wakeup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 484, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"gpio acquisition failed with error %ld, sleep disabled\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx90614_probe_wakeup._entry_ptr.14 = internal global ptr @mlx90614_probe_wakeup._entry.11, section ".printk_index", align 4
@mlx90614_probe_wakeup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.3, i32 488, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wakeup-gpio not found, sleep disabled\00", [58 x i8] zeroinitializer }, align 32
@mlx90614_probe_wakeup._entry_ptr.17 = internal global ptr @mlx90614_probe_wakeup._entry.15, section ".printk_index", align 4
@mlx90614_wakeup.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx90614_wakeup\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wake-up disabled\00", [47 x i8] zeroinitializer }, align 32
@mlx90614_wakeup.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.20, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Requesting wake-up\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx90614_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mlx90614_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mlx90614_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_temp_object_filter_low_pass_3db_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_in_temp_object_filter_low_pass_3db_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.21, %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"0.15 0.20 0.31 0.77 0.86 1.10 1.53 7.23\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"in_temp_object_filter_low_pass_3db_frequency_available\00", [41 x i8] zeroinitializer }, align 32
@mlx90614_iir_values = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 77, i32 31, i32 20, i32 15, i32 723, i32 153, i32 110, i32 86], [32 x i8] zeroinitializer }, align 32
@mlx90614_write_word.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx90614_write_word\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Writing 0x%x to address 0x%x\00", [35 x i8] zeroinitializer }, align 32
@mlx90614_sleep.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx90614_sleep\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sleep disabled\00", [17 x i8] zeroinitializer }, align 32
@mlx90614_sleep.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Requesting sleep\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 10, i64 24]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 24]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 32, i64 15, i64 20, i64 31, i64 77, i64 86, i64 110, i64 153, i64 723]
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"mlx90614_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 659, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 661, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"mlx90614_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 597, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"mlx90614_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 653, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"mlx90614_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 591, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 538, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"mlx90614_info\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 409, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 550, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"mlx90614_channels\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 376, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 555, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 474, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 479, i32 47 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 482, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 487, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 441, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 445, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"mlx90614_attr_group\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 90, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"mlx90614_attributes\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 85, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant [70 x i8] c"iio_const_attr_in_temp_object_filter_low_pass_3db_frequency_available\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 82, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"mlx90614_iir_values\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 81, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 109, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 422, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [38 x i8] c"../drivers/iio/temperature/mlx90614.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 426, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_mlx90614_driver_exit, ptr @__initcall__kmod_mlx90614__296_669_mlx90614_driver_init6, ptr @mlx90614_driver_exit, ptr @mlx90614_probe_wakeup._entry, ptr @mlx90614_probe_wakeup._entry.11, ptr @mlx90614_probe_wakeup._entry.15, ptr @mlx90614_probe_wakeup._entry_ptr, ptr @mlx90614_probe_wakeup._entry_ptr.14, ptr @mlx90614_probe_wakeup._entry_ptr.17, ptr @mlx90614_driver, ptr @.str, ptr @mlx90614_of_match, ptr @mlx90614_pm_ops, ptr @mlx90614_id, ptr @mlx90614_probe.__key, ptr @.str.1, ptr @mlx90614_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlx90614_channels, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @mlx90614_attr_group, ptr @mlx90614_attributes, ptr @iio_const_attr_in_temp_object_filter_low_pass_3db_frequency_available, ptr @.str.21, ptr @.str.22, ptr @mlx90614_iir_values, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_probe_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_probe_wakeup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_probe_wakeup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_temp_object_filter_low_pass_3db_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90614_iir_values to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mlx90614_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlx90614_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mlx90614_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 104) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %7, align 4
  %lock = getelementptr inbounds %struct.mlx90614_data, ptr %7, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx90614_probe.__key) #7
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = tail call i32 %15(ptr noundef %11) #7
  %16 = and i32 %call.i.i.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br label %mlx90614_probe_wakeup.exit

if.end.i:                                         ; preds = %if.end4
  %call2.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 1) #7
  %cmp.i25.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %do.end7.i, label %if.else.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call2.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %17) #10
  br label %mlx90614_probe_wakeup.exit

if.else.i:                                        ; preds = %if.end.i
  %tobool10.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool10.not.i, label %do.end14.i, label %if.else.i.mlx90614_probe_wakeup.exit_crit_edge

if.else.i.mlx90614_probe_wakeup.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90614_probe_wakeup.exit

do.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %mlx90614_probe_wakeup.exit

mlx90614_probe_wakeup.exit:                       ; preds = %do.end14.i, %if.else.i.mlx90614_probe_wakeup.exit_crit_edge, %do.end7.i, %do.end.i
  %retval.0.i82 = phi ptr [ null, %do.end7.i ], [ null, %do.end.i ], [ %call2.i, %if.else.i.mlx90614_probe_wakeup.exit_crit_edge ], [ null, %do.end14.i ]
  %wakeup_gpio = getelementptr inbounds %struct.mlx90614_data, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i82, ptr %wakeup_gpio, align 4
  %call8 = tail call fastcc i32 @mlx90614_wakeup(ptr noundef %7)
  %name9 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %19 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %id, ptr %name9, align 8
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call1, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mlx90614_info, ptr %info, align 8
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i83 = icmp slt i32 %call.i, 0
  %and.i84 = lshr i32 %call.i, 6
  %and.lobit.i = and i32 %and.i84, 1
  %retval.0.i85 = select i1 %cmp.i83, i32 %call.i, i32 %and.lobit.i
  %22 = zext i32 %retval.0.i85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i85, label %mlx90614_probe_wakeup.exit.cleanup_crit_edge [
    i32 0, label %do.body11
    i32 1, label %do.body22
  ]

mlx90614_probe_wakeup.exit.cleanup_crit_edge:     ; preds = %mlx90614_probe_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body11:                                        ; preds = %mlx90614_probe_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90614_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90614_probe, %if.then16)) #7
          to label %sw.epilog [label %if.then16], !srcloc !94

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90614_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  br label %sw.epilog

do.body22:                                        ; preds = %mlx90614_probe_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90614_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90614_probe, %if.then34)) #7
          to label %sw.epilog [label %if.then34], !srcloc !94

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90614_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.5) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then34, %do.body22, %if.then16, %do.body11
  %.sink = phi i32 [ 2, %do.body11 ], [ 2, %if.then16 ], [ 3, %do.body22 ], [ 3, %if.then34 ]
  %channels39 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %23 = ptrtoint ptr %channels39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mlx90614_channels, ptr %channels39, align 8
  %num_channels40 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %24 = ptrtoint ptr %num_channels40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %num_channels40, align 4
  %25 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wakeup_gpio, align 4
  %tobool42.not = icmp eq ptr %26, null
  br i1 %tobool42.not, label %sw.epilog.if.end49_crit_edge, label %if.then43

sw.epilog.if.end49_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 5000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i86 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %sw.epilog.if.end49_crit_edge
  %call50 = tail call i32 @__iio_device_register(ptr noundef nonnull %call1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %mlx90614_probe_wakeup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end49 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i85, %mlx90614_probe_wakeup.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #7
  %wakeup_gpio = getelementptr inbounds %struct.mlx90614_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @mlx90614_sleep(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90614_wakeup(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeup_gpio = getelementptr inbounds %struct.mlx90614_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %do.body6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90614_wakeup.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90614_wakeup, %if.then4)) #7
          to label %return [label %if.then4], !srcloc !94

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90614_wakeup.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %return

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90614_wakeup.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90614_wakeup, %if.then18)) #7
          to label %do.end22 [label %if.then18], !srcloc !94

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90614_wakeup.__UNIQUE_ID_ddebug293, ptr noundef %dev20, ptr noundef nonnull @.str.20) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock_ops.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %9, i32 noundef 1) #7
  %14 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wakeup_gpio, align 4
  %call25 = tail call i32 @gpiod_direction_output(ptr noundef %15, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 34) #7
  %16 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wakeup_gpio, align 4
  %call27 = tail call i32 @gpiod_direction_input(ptr noundef %17) #7
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %adapter29 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %adapter29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter29, align 8
  %lock_ops.i44 = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %lock_ops.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock_ops.i44, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %25(ptr noundef %21, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %26, 25
  %ready_timestamp = getelementptr inbounds %struct.mlx90614_data, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %ready_timestamp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %ready_timestamp, align 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %call32 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %29, i8 noundef zeroext 37) #7
  br label %return

return:                                           ; preds = %do.end22, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %do.end22 ], [ -38, %if.then4 ], [ -38, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb15
    i32 2, label %sw.bb16
    i32 24, label %sw.bb17
    i32 10, label %sw.bb31
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 2
  %3 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 21, label %sw.bb.sw.epilog7_crit_edge
    i32 22, label %sw.bb2
  ]

sw.bb.sw.epilog7_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %channel3 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel3, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %7, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb2.sw.epilog7_crit_edge
    i32 1, label %sw.bb5
  ]

sw.bb2.sw.epilog7_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog7

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.bb5, %sw.bb2.sw.epilog7_crit_edge, %sw.bb.sw.epilog7_crit_edge
  %cmd.0 = phi i8 [ 8, %sw.bb5 ], [ 6, %sw.bb.sw.epilog7_crit_edge ], [ 7, %sw.bb2.sw.epilog7_crit_edge ]
  %call8 = tail call fastcc i32 @mlx90614_power_get(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %sw.epilog7.cleanup_crit_edge, label %if.end

sw.epilog7.cleanup_crit_edge:                     ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %10, i8 noundef zeroext %cmd.0) #7
  %wakeup_gpio.i = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %wakeup_gpio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.mlx90614_power_put.exit_crit_edge, label %if.end.i

if.end.mlx90614_power_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90614_power_put.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  %call.i5.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2.i, i32 noundef 13) #7
  br label %mlx90614_power_put.exit

mlx90614_power_put.exit:                          ; preds = %if.end.i, %if.end.mlx90614_power_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %mlx90614_power_put.exit.cleanup_crit_edge, label %if.end12

mlx90614_power_put.exit.cleanup_crit_edge:        ; preds = %mlx90614_power_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %mlx90614_power_put.exit
  %and = and i32 %call9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call9, ptr %val, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -13657, ptr %val, align 4
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 500000, ptr %val2, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 20, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %wakeup_gpio.i88 = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %wakeup_gpio.i88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wakeup_gpio.i88, align 4
  %tobool.not.i89 = icmp eq ptr %23, null
  br i1 %tobool.not.i89, label %sw.bb17.if.end21_crit_edge, label %if.end.i91

sw.bb17.if.end21_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end.i91:                                       ; preds = %sw.bb17
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %call.i.i90 = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90)
  %cmp.i.i = icmp slt i32 %call.i.i90, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i91.if.end21_crit_edge

if.end.i91.if.end21_crit_edge:                    ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then.i.i:                                      ; preds = %if.end.i91
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #7, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %cleanup

if.end21:                                         ; preds = %if.end.i91.if.end21_crit_edge, %sw.bb17.if.end21_crit_edge
  %lock = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call23 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %28, i8 noundef zeroext 36) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %29 = ptrtoint ptr %wakeup_gpio.i88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wakeup_gpio.i88, align 4
  %tobool.not.i93 = icmp eq ptr %30, null
  br i1 %tobool.not.i93, label %if.end21.mlx90614_power_put.exit99_crit_edge, label %if.end.i98

if.end21.mlx90614_power_put.exit99_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90614_power_put.exit99

if.end.i98:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i94 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i95 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i.i95 to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i.i94, ptr %last_busy.i.i95, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %dev2.i96 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %call.i5.i97 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2.i96, i32 noundef 13) #7
  br label %mlx90614_power_put.exit99

mlx90614_power_put.exit99:                        ; preds = %if.end.i98, %if.end21.mlx90614_power_put.exit99_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %mlx90614_power_put.exit99.cleanup_crit_edge, label %if.end27

mlx90614_power_put.exit99.cleanup_crit_edge:      ; preds = %mlx90614_power_put.exit99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %mlx90614_power_put.exit99
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call23)
  %cmp28 = icmp eq i32 %call23, 65535
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %val, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %val, align 4
  %mul = mul i32 %call23, 15259
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %storemerge = phi i32 [ %mul, %if.else ], [ 0, %if.then29 ]
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %storemerge, ptr %val2, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  %wakeup_gpio.i100 = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %wakeup_gpio.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wakeup_gpio.i100, align 4
  %tobool.not.i101 = icmp eq ptr %40, null
  br i1 %tobool.not.i101, label %sw.bb31.if.end35_crit_edge, label %if.end.i105

sw.bb31.if.end35_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end.i105:                                      ; preds = %sw.bb31
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %dev.i102 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %call.i.i103 = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i102, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %cmp.i.i104 = icmp slt i32 %call.i.i103, 0
  br i1 %cmp.i.i104, label %if.then.i.i110, label %if.end.i105.if.end35_crit_edge

if.end.i105.if.end35_crit_edge:                   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then.i.i110:                                   ; preds = %if.end.i105
  %usage_count.i.i.i106 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i106, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i106, i32 1, i32 3, i32 1) #7
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i106, ptr %usage_count.i.i.i106, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i106) #7, !srcloc !96
  %asmresult.i.i.i.i.i.i108 = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i108)
  %cmp.not.i.i.i.i.i.i109 = icmp eq i32 %asmresult.i.i.i.i.i.i108, 0
  br i1 %cmp.not.i.i.i.i.i.i109, label %if.then.i.i110.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i111

if.then.i.i110.cleanup_crit_edge:                 ; preds = %if.then.i.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i.i111:                          ; preds = %if.then.i.i110
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %cleanup

if.end35:                                         ; preds = %if.end.i105.if.end35_crit_edge, %sw.bb31.if.end35_crit_edge
  %lock36 = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock36, i32 noundef 0) #7
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call38 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %45, i8 noundef zeroext 37) #7
  tail call void @mutex_unlock(ptr noundef %lock36) #7
  %46 = ptrtoint ptr %wakeup_gpio.i100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wakeup_gpio.i100, align 4
  %tobool.not.i116 = icmp eq ptr %47, null
  br i1 %tobool.not.i116, label %if.end35.mlx90614_power_put.exit122_crit_edge, label %if.end.i121

if.end35.mlx90614_power_put.exit122_crit_edge:    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90614_power_put.exit122

if.end.i121:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i117 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i118 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4, i32 12, i32 22
  %50 = ptrtoint ptr %last_busy.i.i118 to i32
  call void @__asan_store8_noabort(i32 %50)
  store volatile i64 %call.i.i117, ptr %last_busy.i.i118, align 8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %dev2.i119 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  %call.i5.i120 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2.i119, i32 noundef 13) #7
  br label %mlx90614_power_put.exit122

mlx90614_power_put.exit122:                       ; preds = %if.end.i121, %if.end35.mlx90614_power_put.exit122_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp40 = icmp slt i32 %call38, 0
  br i1 %cmp40, label %mlx90614_power_put.exit122.cleanup_crit_edge, label %if.end42

mlx90614_power_put.exit122.cleanup_crit_edge:     ; preds = %mlx90614_power_put.exit122
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %mlx90614_power_put.exit122
  call void @__sanitizer_cov_trace_pc() #9
  %and43 = and i32 %call38, 7
  %arrayidx = getelementptr [8 x i32], ptr @mlx90614_iir_values, i32 0, i32 %and43
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  %.frozen = freeze i32 %54
  %div = sdiv i32 %.frozen, 100
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div, ptr %val, align 4
  %56 = mul i32 %div, 100
  %rem.decomposed = sub i32 %.frozen, %56
  %mul46 = mul nsw i32 %rem.decomposed, 10000
  %57 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul46, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %mlx90614_power_put.exit122.cleanup_crit_edge, %do.end11.i.i.i.i.i.i111, %if.then.i.i110.cleanup_crit_edge, %if.end30, %mlx90614_power_put.exit99.cleanup_crit_edge, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %sw.bb16, %sw.bb15, %if.end14, %if.end12.cleanup_crit_edge, %mlx90614_power_put.exit.cleanup_crit_edge, %sw.epilog7.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end42 ], [ 3, %if.end30 ], [ 1, %sw.bb16 ], [ 2, %sw.bb15 ], [ 1, %if.end14 ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call8, %sw.epilog7.cleanup_crit_edge ], [ %call9, %mlx90614_power_put.exit.cleanup_crit_edge ], [ -5, %if.end12.cleanup_crit_edge ], [ %call23, %mlx90614_power_put.exit99.cleanup_crit_edge ], [ %call38, %mlx90614_power_put.exit122.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i90, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i90, %do.end11.i.i.i.i.i.i ], [ %call.i.i103, %if.then.i.i110.cleanup_crit_edge ], [ %call.i.i103, %do.end11.i.i.i.i.i.i111 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %channel, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 24, label %sw.bb
    i32 10, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = or i32 %val2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp slt i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp3 = icmp sgt i32 %val, 1
  %or.cond58 = or i1 %cmp3, %4
  br i1 %or.cond58, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp5 = icmp ne i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.not = icmp eq i32 %val2, 0
  %or.cond59 = or i1 %cmp5, %cmp6.not
  br i1 %or.cond59, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %wakeup_gpio.i = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %wakeup_gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.if.end10_crit_edge, label %if.end.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.i.i:                                      ; preds = %if.end.i
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #7, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %mul = mul nuw nsw i32 %val, 65535
  %div93 = udiv i32 %val2, 15259
  %add = add nuw nsw i32 %div93, %mul
  %lock = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %conv = trunc i32 %add to i16
  %call11 = tail call fastcc i32 @mlx90614_write_word(ptr noundef %11, i8 noundef zeroext 36, i16 noundef zeroext %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %12 = ptrtoint ptr %wakeup_gpio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wakeup_gpio.i, align 4
  %tobool.not.i62 = icmp eq ptr %13, null
  br i1 %tobool.not.i62, label %if.end10.cleanup_crit_edge, label %if.end.i64

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i64:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i63 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i.i63, ptr %last_busy.i.i, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call.i5.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2.i, i32 noundef 13) #7
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %19 = or i32 %val2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not = icmp sgt i32 %19, -1
  br i1 %.not, label %if.end20, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %sw.bb13
  %wakeup_gpio.i65 = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %wakeup_gpio.i65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wakeup_gpio.i65, align 4
  %tobool.not.i66 = icmp eq ptr %21, null
  br i1 %tobool.not.i66, label %if.end20.if.end25_crit_edge, label %if.end.i70

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end.i70:                                       ; preds = %if.end20
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev.i67 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %call.i.i68 = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i67, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp.i.i69 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp.i.i69, label %if.then.i.i75, label %if.end.i70.if.end25_crit_edge

if.end.i70.if.end25_crit_edge:                    ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then.i.i75:                                    ; preds = %if.end.i70
  %usage_count.i.i.i71 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i71, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i71, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i71, ptr %usage_count.i.i.i71, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i71) #7, !srcloc !96
  %asmresult.i.i.i.i.i.i73 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i73)
  %cmp.not.i.i.i.i.i.i74 = icmp eq i32 %asmresult.i.i.i.i.i.i73, 0
  br i1 %cmp.not.i.i.i.i.i.i74, label %if.then.i.i75.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i76

if.then.i.i75.cleanup_crit_edge:                  ; preds = %if.then.i.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i.i76:                           ; preds = %if.then.i.i75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %cleanup

if.end25:                                         ; preds = %if.end.i70.if.end25_crit_edge, %if.end20.if.end25_crit_edge
  %lock26 = getelementptr inbounds %struct.mlx90614_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock26, i32 noundef 0) #7
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %mul28 = mul i32 %val, 100
  %div2994 = udiv i32 %val2, 10000
  %add30 = add i32 %div2994, %mul28
  %27 = zext i32 %add30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %add30, label %if.end25.mlx90614_iir_search.exit_crit_edge [
    i32 77, label %if.end25.if.end4.i_crit_edge
    i32 31, label %if.end4.fold.split.i
    i32 20, label %if.end4.fold.split29.i
    i32 15, label %if.end4.fold.split30.i
    i32 723, label %if.end4.fold.split31.i
    i32 153, label %if.end4.fold.split32.i
    i32 110, label %if.end4.fold.split33.i
    i32 86, label %if.end4.fold.split34.i
  ]

if.end25.if.end4.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end25.mlx90614_iir_search.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90614_iir_search.exit

if.end4.fold.split.i:                             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.fold.split29.i:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.fold.split30.i:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.fold.split31.i:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.fold.split32.i:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.fold.split33.i:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.fold.split34.i:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.fold.split34.i, %if.end4.fold.split33.i, %if.end4.fold.split32.i, %if.end4.fold.split31.i, %if.end4.fold.split30.i, %if.end4.fold.split29.i, %if.end4.fold.split.i, %if.end25.if.end4.i_crit_edge
  %i.027.lcssa.i = phi i32 [ 0, %if.end25.if.end4.i_crit_edge ], [ 1, %if.end4.fold.split.i ], [ 2, %if.end4.fold.split29.i ], [ 3, %if.end4.fold.split30.i ], [ 4, %if.end4.fold.split31.i ], [ 5, %if.end4.fold.split32.i ], [ 6, %if.end4.fold.split33.i ], [ 7, %if.end4.fold.split34.i ]
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %26, i8 noundef zeroext 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.end4.i.mlx90614_iir_search.exit_crit_edge, label %if.end7.i

if.end4.i.mlx90614_iir_search.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx90614_iir_search.exit

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = and i32 %call.i, 63736
  %and8.i = or i32 %or.i, %i.027.lcssa.i
  %28 = trunc i32 %and8.i to i16
  %conv.i = or i16 %28, 1792
  %call10.i = tail call fastcc i32 @mlx90614_write_word(ptr noundef %26, i8 noundef zeroext 37, i16 noundef zeroext %conv.i) #7
  br label %mlx90614_iir_search.exit

mlx90614_iir_search.exit:                         ; preds = %if.end7.i, %if.end4.i.mlx90614_iir_search.exit_crit_edge, %if.end25.mlx90614_iir_search.exit_crit_edge
  %retval.0.i80 = phi i32 [ %call10.i, %if.end7.i ], [ %call.i, %if.end4.i.mlx90614_iir_search.exit_crit_edge ], [ -22, %if.end25.mlx90614_iir_search.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock26) #7
  %29 = ptrtoint ptr %wakeup_gpio.i65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wakeup_gpio.i65, align 4
  %tobool.not.i82 = icmp eq ptr %30, null
  br i1 %tobool.not.i82, label %mlx90614_iir_search.exit.cleanup_crit_edge, label %if.end.i87

mlx90614_iir_search.exit.cleanup_crit_edge:       ; preds = %mlx90614_iir_search.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i87:                                       ; preds = %mlx90614_iir_search.exit
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i83 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i84 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i.i84 to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i.i83, ptr %last_busy.i.i84, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %dev2.i85 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %call.i5.i86 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2.i85, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i87, %mlx90614_iir_search.exit.cleanup_crit_edge, %do.end11.i.i.i.i.i.i76, %if.then.i.i75.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end.i64, %if.end10.cleanup_crit_edge, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call11, %if.end.i64 ], [ %retval.0.i80, %mlx90614_iir_search.exit.cleanup_crit_edge ], [ %retval.0.i80, %if.end.i87 ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ], [ %call.i.i68, %if.then.i.i75.cleanup_crit_edge ], [ %call.i.i68, %do.end11.i.i.i.i.i.i76 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx90614_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %channel, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %mask)
  %switch.selectcmp = icmp eq i32 %mask, 10
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %mask)
  %switch.selectcmp2 = icmp eq i32 %mask, 24
  %switch.select3 = select i1 %switch.selectcmp2, i32 3, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90614_power_get(ptr nocapture noundef readonly %data, i1 noundef zeroext %startup) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeup_gpio = getelementptr inbounds %struct.mlx90614_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !96
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %cleanup

pm_runtime_resume_and_get.exit:                   ; preds = %if.end
  br i1 %startup, label %if.then4, label %pm_runtime_resume_and_get.exit.cleanup_crit_edge

pm_runtime_resume_and_get.exit.cleanup_crit_edge: ; preds = %pm_runtime_resume_and_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %pm_runtime_resume_and_get.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %ready_timestamp = getelementptr inbounds %struct.mlx90614_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %ready_timestamp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ready_timestamp, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %land.lhs.true, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then4
  %sub7 = sub i32 %7, %5
  %call8 = tail call i32 @jiffies_to_msecs(i32 noundef %sub7) #7
  %call9 = tail call i32 @msleep_interruptible(i32 noundef %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %call.i24 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev13, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %pm_runtime_resume_and_get.exit.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %if.then11 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %pm_runtime_resume_and_get.exit.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90614_write_word(ptr noundef %client, i8 noundef zeroext %command, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %data = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #7
  %0 = getelementptr inbounds i8, ptr %data, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90614_write_word.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90614_write_word, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i16 %value to i32
  %conv3 = zext i8 %command to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90614_write_word.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %conv3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %data, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %client, align 8
  %9 = or i16 %8, 4
  %call6 = call i32 @i2c_smbus_xfer(ptr noundef %4, i16 noundef zeroext %6, i16 noundef zeroext %9, i8 noundef zeroext 0, i8 noundef zeroext %command, i32 noundef 3, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 20) #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %value, ptr %data, align 2
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr, align 2
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %client, align 8
  %17 = or i16 %16, 4
  %call16 = call i32 @i2c_smbus_xfer(ptr noundef %12, i16 noundef zeroext %14, i16 noundef zeroext %17, i8 noundef zeroext 0, i8 noundef zeroext %command, i32 noundef 3, ptr noundef nonnull %data) #7
  call void @msleep(i32 noundef 20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end9 ], [ %call6, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx90614_sleep(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeup_gpio = getelementptr inbounds %struct.mlx90614_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %do.body6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90614_sleep.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90614_sleep, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !94

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90614_sleep.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  br label %cleanup

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx90614_sleep.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx90614_sleep, %if.then18)) #7
          to label %do.end23 [label %if.then18], !srcloc !94

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx90614_sleep.__UNIQUE_ID_ddebug291, ptr noundef %dev20, ptr noundef nonnull @.str.27) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body6
  %lock = getelementptr inbounds %struct.mlx90614_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %7, align 8
  %14 = or i16 %13, 4
  %call28 = tail call i32 @i2c_smbus_xfer(ptr noundef %9, i16 noundef zeroext %11, i16 noundef zeroext %14, i8 noundef zeroext 0, i8 noundef zeroext -1, i32 noundef 1, ptr noundef null) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then4, %do.body
  %retval.0 = phi i32 [ %call28, %do.end23 ], [ -38, %if.then4 ], [ -38, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %wakeup_gpio = getelementptr inbounds %struct.mlx90614_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %land.lhs.true.if.then_crit_edge, label %pm_runtime_active.exit

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_active.exit:                           ; preds = %land.lhs.true
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then_crit_edge, label %pm_runtime_active.exit.cleanup_crit_edge

pm_runtime_active.exit.cleanup_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pm_runtime_active.exit.if.then_crit_edge:         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %pm_runtime_active.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %call3 = tail call fastcc i32 @mlx90614_sleep(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %pm_runtime_active.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %pm_runtime_active.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_pm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %wakeup_gpio = getelementptr inbounds %struct.mlx90614_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wakeup_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @mlx90614_wakeup(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_pm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @mlx90614_sleep(ptr noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90614_pm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @mlx90614_wakeup(ptr noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_mlx90614__296_669_mlx90614_driver_init6, !1, !"__initcall__kmod_mlx90614__296_669_mlx90614_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/mlx90614.c", i32 669, i32 1}
!2 = !{ptr @__exitcall_mlx90614_driver_exit, !1, !"__exitcall_mlx90614_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/mlx90614.c", i32 671, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/mlx90614.c", i32 672, i32 1}
!7 = !{ptr @__UNIQUE_ID_author299, !8, !"__UNIQUE_ID_author299", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/mlx90614.c", i32 673, i32 1}
!9 = !{ptr @__UNIQUE_ID_description300, !10, !"__UNIQUE_ID_description300", i1 false, i1 false}
!10 = !{!"../drivers/iio/temperature/mlx90614.c", i32 674, i32 1}
!11 = !{ptr @__UNIQUE_ID_file301, !12, !"__UNIQUE_ID_file301", i1 false, i1 false}
!12 = !{!"../drivers/iio/temperature/mlx90614.c", i32 675, i32 1}
!13 = !{ptr @__UNIQUE_ID_license302, !12, !"__UNIQUE_ID_license302", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/mlx90614.c", i32 661, i32 11}
!16 = !{ptr @mlx90614_driver, !17, !"mlx90614_driver", i1 false, i1 false}
!17 = !{!"../drivers/iio/temperature/mlx90614.c", i32 659, i32 26}
!18 = !{ptr @mlx90614_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/iio/temperature/mlx90614.c", i32 538, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/temperature/mlx90614.c", i32 550, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx90614_probe.__UNIQUE_ID_ddebug294, !22, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/temperature/mlx90614.c", i32 555, i32 3}
!28 = !{ptr @mlx90614_probe.__UNIQUE_ID_ddebug295, !27, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/temperature/mlx90614.c", i32 474, i32 3}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mlx90614_probe_wakeup._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @mlx90614_probe_wakeup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/temperature/mlx90614.c", i32 479, i32 47}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/temperature/mlx90614.c", i32 482, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mlx90614_probe_wakeup._entry.11, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlx90614_probe_wakeup._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/temperature/mlx90614.c", i32 487, i32 3}
!45 = !{ptr @mlx90614_probe_wakeup._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mlx90614_probe_wakeup._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/temperature/mlx90614.c", i32 441, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mlx90614_wakeup.__UNIQUE_ID_ddebug292, !48, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/temperature/mlx90614.c", i32 445, i32 2}
!53 = !{ptr @mlx90614_wakeup.__UNIQUE_ID_ddebug293, !52, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!54 = !{ptr @mlx90614_info, !55, !"mlx90614_info", i1 false, i1 false}
!55 = !{!"../drivers/iio/temperature/mlx90614.c", i32 409, i32 30}
!56 = !{ptr @mlx90614_attr_group, !57, !"mlx90614_attr_group", i1 false, i1 false}
!57 = !{!"../drivers/iio/temperature/mlx90614.c", i32 90, i32 37}
!58 = !{ptr @mlx90614_attributes, !59, !"mlx90614_attributes", i1 false, i1 false}
!59 = !{!"../drivers/iio/temperature/mlx90614.c", i32 85, i32 26}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/temperature/mlx90614.c", i32 82, i32 8}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @iio_const_attr_in_temp_object_filter_low_pass_3db_frequency_available, !61, !"iio_const_attr_in_temp_object_filter_low_pass_3db_frequency_available", i1 false, i1 false}
!64 = !{ptr @mlx90614_iir_values, !65, !"mlx90614_iir_values", i1 false, i1 false}
!65 = !{!"../drivers/iio/temperature/mlx90614.c", i32 81, i32 18}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/temperature/mlx90614.c", i32 109, i32 2}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mlx90614_write_word.__UNIQUE_ID_ddebug289, !67, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!70 = !{ptr @mlx90614_channels, !71, !"mlx90614_channels", i1 false, i1 false}
!71 = !{!"../drivers/iio/temperature/mlx90614.c", i32 376, i32 35}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/temperature/mlx90614.c", i32 422, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mlx90614_sleep.__UNIQUE_ID_ddebug290, !73, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/temperature/mlx90614.c", i32 426, i32 2}
!78 = !{ptr @mlx90614_sleep.__UNIQUE_ID_ddebug291, !77, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!79 = !{ptr @mlx90614_of_match, !80, !"mlx90614_of_match", i1 false, i1 false}
!80 = !{!"../drivers/iio/temperature/mlx90614.c", i32 597, i32 34}
!81 = !{ptr @mlx90614_pm_ops, !82, !"mlx90614_pm_ops", i1 false, i1 false}
!82 = !{!"../drivers/iio/temperature/mlx90614.c", i32 653, i32 32}
!83 = !{ptr @mlx90614_id, !84, !"mlx90614_id", i1 false, i1 false}
!84 = !{!"../drivers/iio/temperature/mlx90614.c", i32 591, i32 35}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2149003503, i64 2149003508, i64 2149003521, i64 2149003565, i64 2149003599, i64 2149003620}
!95 = !{i64 2148361852}
!96 = !{i64 846675, i64 846700, i64 846722, i64 846738, i64 846750, i64 846770, i64 846794, i64 846810, i64 846822}
!97 = !{i64 2148362040}
