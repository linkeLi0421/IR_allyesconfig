; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/hp206c.c_pt.bc'
source_filename = "../drivers/iio/pressure/hp206c.c"
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
%struct.hp206c_osr_setting = type { i8, i32, i32 }
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
%struct.hp206c_data = type { %struct.mutex, ptr, i32, i32 }

@__initcall__kmod_hp206c__288_420_hp206c_driver_init6 = internal global ptr @hp206c_driver_init, section ".initcall6.init", align 4
@hp206c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @hp206c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hp206c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hp206c_driver_exit = internal global ptr @hp206c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [74 x i8] c"hp206c.description=HOPERF HP206C precision barometer and altimeter sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [58 x i8] c"hp206c.author=Leonard Crestez <leonard.crestez@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"hp206c.file=drivers/iio/pressure/hp206c\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"hp206c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hp206c\00", [25 x i8] zeroinitializer }, align 32
@hp206c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"hp206c\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hp206c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Adapter does not support all required i2c functionality\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hp206c_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/pressure/hp206c.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hp206c_probe._entry_ptr = internal global ptr @hp206c_probe._entry, section ".printk_index", align 4
@hp206c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@hp206c_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @hp206c_attribute_group, ptr @hp206c_read_raw, ptr null, ptr null, ptr @hp206c_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hp206c_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 33554437, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 33554437, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@hp206c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to reset on startup: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@hp206c_probe._entry_ptr.9 = internal global ptr @hp206c_probe._entry.7, section ".printk_index", align 4
@hp206c_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hp206c_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@hp206c_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @hp206c_osr_rates_str, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@hp206c_osr_rates_str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"4096 2048 1024 512 256 128\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@hp206c_osr_rates = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128], [40 x i8] zeroinitializer }, align 32
@hp206c_osr_settings = internal constant { [6 x %struct.hp206c_osr_setting], [56 x i8] } { [6 x %struct.hp206c_osr_setting] [%struct.hp206c_osr_setting { i8 0, i32 65600, i32 131100 }, %struct.hp206c_osr_setting { i8 4, i32 32800, i32 65600 }, %struct.hp206c_osr_setting { i8 8, i32 16400, i32 32800 }, %struct.hp206c_osr_setting { i8 12, i32 8200, i32 16400 }, %struct.hp206c_osr_setting { i8 16, i32 4100, i32 8200 }, %struct.hp206c_osr_setting { i8 20, i32 2100, i32 4100 }], [56 x i8] zeroinitializer }, align 32
@hp206c_conv_and_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device not ready: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hp206c_conv_and_read\00", [43 x i8] zeroinitializer }, align 32
@hp206c_conv_and_read._entry_ptr = internal global ptr @hp206c_conv_and_read._entry, section ".printk_index", align 4
@hp206c_conv_and_read._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed convert: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@hp206c_conv_and_read._entry_ptr.15 = internal global ptr @hp206c_conv_and_read._entry.13, section ".printk_index", align 4
@hp206c_conv_and_read._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hp206c_conv_and_read._entry_ptr.17 = internal global ptr @hp206c_conv_and_read._entry.16, section ".printk_index", align 4
@hp206c_conv_and_read._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Failed read: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hp206c_conv_and_read._entry_ptr.20 = internal global ptr @hp206c_conv_and_read._entry.18, section ".printk_index", align 4
@hp206c_wait_dev_rdy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed READ_REG INT_SRC: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hp206c_wait_dev_rdy\00", [44 x i8] zeroinitializer }, align 32
@hp206c_wait_dev_rdy._entry_ptr = internal global ptr @hp206c_wait_dev_rdy._entry, section ".printk_index", align 4
@hp206c_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hp206c_soft_reset\00", [46 x i8] zeroinitializer }, align 32
@hp206c_soft_reset._entry_ptr = internal global ptr @hp206c_soft_reset._entry, section ".printk_index", align 4
@hp206c_soft_reset._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Device not ready after soft reset: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hp206c_soft_reset._entry_ptr.27 = internal global ptr @hp206c_soft_reset._entry.25, section ".printk_index", align 4
@hp206c_soft_reset._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable compensation: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hp206c_soft_reset._entry_ptr.30 = internal global ptr @hp206c_soft_reset._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 25]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"hp206c_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 411, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 415, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"hp206c_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 397, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 366, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 377, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"hp206c_info\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 349, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"hp206c_channels\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 323, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 390, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"hp206c_attribute_group\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 345, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"hp206c_attributes\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 340, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"hp206c_osr_rates_str\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 80, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 338, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"hp206c_osr_rates\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 79, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"hp206c_osr_settings\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 71, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 179, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 185, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 193, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 199, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 117, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 151, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 159, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [33 x i8] c"../drivers/iio/pressure/hp206c.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 165, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_hp206c_driver_exit, ptr @__initcall__kmod_hp206c__288_420_hp206c_driver_init6, ptr @hp206c_conv_and_read._entry, ptr @hp206c_conv_and_read._entry.13, ptr @hp206c_conv_and_read._entry.16, ptr @hp206c_conv_and_read._entry.18, ptr @hp206c_conv_and_read._entry_ptr, ptr @hp206c_conv_and_read._entry_ptr.15, ptr @hp206c_conv_and_read._entry_ptr.17, ptr @hp206c_conv_and_read._entry_ptr.20, ptr @hp206c_driver_exit, ptr @hp206c_probe._entry, ptr @hp206c_probe._entry.7, ptr @hp206c_probe._entry_ptr, ptr @hp206c_probe._entry_ptr.9, ptr @hp206c_soft_reset._entry, ptr @hp206c_soft_reset._entry.25, ptr @hp206c_soft_reset._entry.28, ptr @hp206c_soft_reset._entry_ptr, ptr @hp206c_soft_reset._entry_ptr.27, ptr @hp206c_soft_reset._entry_ptr.30, ptr @hp206c_wait_dev_rdy._entry, ptr @hp206c_wait_dev_rdy._entry_ptr, ptr @hp206c_driver, ptr @.str, ptr @hp206c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hp206c_probe.__key, ptr @.str.6, ptr @hp206c_info, ptr @hp206c_channels, ptr @.str.8, ptr @hp206c_attribute_group, ptr @hp206c_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @hp206c_osr_rates_str, ptr @.str.10, ptr @hp206c_osr_rates, ptr @hp206c_osr_settings, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_osr_rates_str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_osr_rates to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_osr_settings to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_conv_and_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_conv_and_read._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_conv_and_read._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_conv_and_read._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_wait_dev_rdy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_soft_reset._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp206c_soft_reset._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hp206c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hp206c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hp206c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @hp206c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp206c_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 69074944
  call void @__sanitizer_cov_trace_const_cmp4(i32 69074944, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 69074944
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 104) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %client7 = getelementptr inbounds %struct.hp206c_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client7, align 4
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @hp206c_probe.__key) #5
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hp206c_info, ptr %info, align 8
  %name11 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %10 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %id, ptr %name11, align 8
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call2, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hp206c_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %num_channels, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %client1.i = getelementptr inbounds %struct.hp206c_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client1.i, align 4
  %call2.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %18, i8 noundef zeroext 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %call2.i) #8
  br label %do.end17

if.end.i:                                         ; preds = %if.end5
  tail call void @usleep_range_state(i32 noundef 400, i32 noundef 600, i32 noundef 2) #5
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %client1.i.i = getelementptr inbounds %struct.hp206c_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client1.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end5.i.i.while.body.i.i_crit_edge, %if.end.i
  %inc13.i.i = phi i32 [ 1, %if.end.i ], [ %inc.i.i, %if.end5.i.i.while.body.i.i_crit_edge ]
  %call.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext -115) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef %call.i.i.i) #8
  br label %do.end8.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %and.i.i = and i32 %call.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.end10.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #5
  %inc.i.i = add nuw nsw i32 %inc13.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 21
  br i1 %exitcond.not.i.i, label %if.end5.i.i.do.end8.i_crit_edge, label %if.end5.i.i.while.body.i.i_crit_edge

if.end5.i.i.while.body.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.end5.i.i.do.end8.i_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.end5.i.i.do.end8.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %do.end.i.i ], [ -110, %if.end5.i.i.do.end8.i_crit_edge ]
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i.ph.i) #8
  br label %do.end17

if.end10.i:                                       ; preds = %if.end.i.i
  %call.i.i34.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext -113) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i)
  %cmp.i.i = icmp slt i32 %call.i.i34.i, 0
  br i1 %cmp.i.i, label %if.end10.i.do.end16.i_crit_edge, label %hp206c_set_compensation.exit.i

if.end10.i.do.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16.i

hp206c_set_compensation.exit.i:                   ; preds = %if.end10.i
  %23 = trunc i32 %call.i.i34.i to i8
  %conv.i.i = or i8 %23, -128
  %call.i1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -49, i8 noundef zeroext %conv.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool12.not.i = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool12.not.i, label %if.end19, label %hp206c_set_compensation.exit.i.do.end16.i_crit_edge

hp206c_set_compensation.exit.i.do.end16.i_crit_edge: ; preds = %hp206c_set_compensation.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16.i

do.end16.i:                                       ; preds = %hp206c_set_compensation.exit.i.do.end16.i_crit_edge, %if.end10.i.do.end16.i_crit_edge
  %retval.0.i3541.i = phi i32 [ %call.i1.i.i, %hp206c_set_compensation.exit.i.do.end16.i_crit_edge ], [ %call.i.i34.i, %if.end10.i.do.end16.i_crit_edge ]
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i3541.i) #8
  br label %do.end17

do.end17:                                         ; preds = %do.end16.i, %do.end8.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %retval.0.i3541.i, %do.end16.i ], [ %retval.0.i.ph.i, %do.end8.i ], [ %call2.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end19:                                         ; preds = %hp206c_set_compensation.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call2, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end17 ], [ %call21, %if.end19 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
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
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp206c_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.sw.epilog36_crit_edge [
    i32 25, label %sw.bb
    i32 0, label %sw.bb4
    i32 2, label %sw.bb29
  ]

entry.sw.epilog36_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog36

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %4, label %sw.bb.sw.epilog36_crit_edge [
    i32 9, label %sw.bb1
    i32 17, label %sw.bb2
  ]

sw.bb.sw.epilog36_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog36

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %temp_osr_index = getelementptr inbounds %struct.hp206c_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %temp_osr_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp_osr_index, align 4
  %arrayidx = getelementptr [6 x i32], ptr @hp206c_osr_rates, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  br label %sw.epilog36

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %pres_osr_index = getelementptr inbounds %struct.hp206c_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %pres_osr_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pres_osr_index, align 4
  %arrayidx3 = getelementptr [6 x i32], ptr @hp206c_osr_rates, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  br label %sw.epilog36

sw.bb4:                                           ; preds = %entry
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %17, label %sw.bb4.sw.epilog36_crit_edge [
    i32 9, label %sw.bb6
    i32 17, label %sw.bb14
  ]

sw.bb4.sw.epilog36_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog36

sw.bb6:                                           ; preds = %sw.bb4
  %temp_osr_index7 = getelementptr inbounds %struct.hp206c_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %temp_osr_index7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp_osr_index7, align 4
  %arrayidx8 = getelementptr [6 x %struct.hp206c_osr_setting], ptr @hp206c_osr_settings, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8, align 4
  %23 = or i8 %22, 66
  %temp_conv_time_us = getelementptr [6 x %struct.hp206c_osr_setting], ptr @hp206c_osr_settings, i32 0, i32 %20, i32 1
  %24 = ptrtoint ptr %temp_conv_time_us to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %temp_conv_time_us, align 4
  %call11 = tail call fastcc i32 @hp206c_conv_and_read(ptr noundef %indio_dev, i8 noundef zeroext %23, i8 noundef zeroext 50, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp = icmp sgt i32 %call11, -1
  br i1 %cmp, label %if.then, label %sw.bb6.sw.epilog36_crit_edge

sw.bb6.sw.epilog36_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog36

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl i32 %call11, 12
  %shr.i = ashr exact i32 %shl.i, 12
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.i, ptr %val, align 4
  br label %sw.epilog36

sw.bb14:                                          ; preds = %sw.bb4
  %pres_osr_index15 = getelementptr inbounds %struct.hp206c_data, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %pres_osr_index15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pres_osr_index15, align 4
  %arrayidx16 = getelementptr [6 x %struct.hp206c_osr_setting], ptr @hp206c_osr_settings, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx16, align 4
  %31 = or i8 %30, 64
  %pres_conv_time_us = getelementptr [6 x %struct.hp206c_osr_setting], ptr @hp206c_osr_settings, i32 0, i32 %28, i32 2
  %32 = ptrtoint ptr %pres_conv_time_us to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pres_conv_time_us, align 4
  %call22 = tail call fastcc i32 @hp206c_conv_and_read(ptr noundef %indio_dev, i8 noundef zeroext %31, i8 noundef zeroext 48, i32 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp23 = icmp sgt i32 %call22, -1
  br i1 %cmp23, label %if.then25, label %sw.bb14.sw.epilog36_crit_edge

sw.bb14.sw.epilog36_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog36

if.then25:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call22, ptr %val, align 4
  br label %sw.epilog36

sw.bb29:                                          ; preds = %entry
  %35 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chan, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %36, label %sw.bb29.sw.epilog36_crit_edge [
    i32 9, label %sw.bb31
    i32 17, label %sw.bb32
  ]

sw.bb29.sw.epilog36_crit_edge:                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog36

sw.bb31:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %val, align 4
  %39 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 10000, ptr %val2, align 4
  br label %sw.epilog36

sw.bb32:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %val, align 4
  %41 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1000, ptr %val2, align 4
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.bb32, %sw.bb31, %sw.bb29.sw.epilog36_crit_edge, %if.then25, %sw.bb14.sw.epilog36_crit_edge, %if.then, %sw.bb6.sw.epilog36_crit_edge, %sw.bb4.sw.epilog36_crit_edge, %sw.bb2, %sw.bb1, %sw.bb.sw.epilog36_crit_edge, %entry.sw.epilog36_crit_edge
  %ret.0 = phi i32 [ 2, %sw.bb32 ], [ 2, %sw.bb31 ], [ 1, %if.then25 ], [ %call22, %sw.bb14.sw.epilog36_crit_edge ], [ 1, %if.then ], [ %call11, %sw.bb6.sw.epilog36_crit_edge ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ -22, %sw.bb.sw.epilog36_crit_edge ], [ -22, %sw.bb4.sw.epilog36_crit_edge ], [ -22, %sw.bb29.sw.epilog36_crit_edge ], [ -22, %entry.sw.epilog36_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp206c_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 25
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 9, label %for.cond.preheader
    i32 17, label %for.cond23.preheader
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.cond23.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %val)
  %cmp50.not = icmp slt i32 %val, 3072
  br i1 %cmp50.not, label %for.cond23.1, label %for.cond23.preheader.for.end56_crit_edge

for.cond23.preheader.for.end56_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %val)
  %cmp13.not = icmp slt i32 %val, 3072
  br i1 %cmp13.not, label %for.cond.1, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.1:                                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %val)
  %cmp13.not.1 = icmp slt i32 %val, 1536
  br i1 %cmp13.not.1, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %val)
  %cmp13.not.2 = icmp slt i32 %val, 768
  br i1 %cmp13.not.2, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %val)
  %cmp13.not.3 = icmp slt i32 %val, 384
  br i1 %cmp13.not.3, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %val)
  %cmp13.not.4 = icmp slt i32 %val, 192
  %spec.select = select i1 %cmp13.not.4, i32 5, i32 4
  br label %for.end

for.end:                                          ; preds = %for.cond.4, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %__fc_i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ 2, %for.cond.2.for.end_crit_edge ], [ 3, %for.cond.3.for.end_crit_edge ], [ %spec.select, %for.cond.4 ]
  %temp_osr_index = getelementptr inbounds %struct.hp206c_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %temp_osr_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %__fc_i.0.lcssa, ptr %temp_osr_index, align 4
  br label %sw.epilog

for.cond23.1:                                     ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %val)
  %cmp50.not.1 = icmp slt i32 %val, 1536
  br i1 %cmp50.not.1, label %for.cond23.2, label %for.cond23.1.for.end56_crit_edge

for.cond23.1.for.end56_crit_edge:                 ; preds = %for.cond23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.cond23.2:                                     ; preds = %for.cond23.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %val)
  %cmp50.not.2 = icmp slt i32 %val, 768
  br i1 %cmp50.not.2, label %for.cond23.3, label %for.cond23.2.for.end56_crit_edge

for.cond23.2.for.end56_crit_edge:                 ; preds = %for.cond23.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.cond23.3:                                     ; preds = %for.cond23.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %val)
  %cmp50.not.3 = icmp slt i32 %val, 384
  br i1 %cmp50.not.3, label %for.cond23.4, label %for.cond23.3.for.end56_crit_edge

for.cond23.3.for.end56_crit_edge:                 ; preds = %for.cond23.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.cond23.4:                                     ; preds = %for.cond23.3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %val)
  %cmp50.not.4 = icmp slt i32 %val, 192
  %spec.select86 = select i1 %cmp50.not.4, i32 5, i32 4
  br label %for.end56

for.end56:                                        ; preds = %for.cond23.4, %for.cond23.3.for.end56_crit_edge, %for.cond23.2.for.end56_crit_edge, %for.cond23.1.for.end56_crit_edge, %for.cond23.preheader.for.end56_crit_edge
  %__fc_i19.0.lcssa = phi i32 [ 0, %for.cond23.preheader.for.end56_crit_edge ], [ 1, %for.cond23.1.for.end56_crit_edge ], [ 2, %for.cond23.2.for.end56_crit_edge ], [ 3, %for.cond23.3.for.end56_crit_edge ], [ %spec.select86, %for.cond23.4 ]
  %pres_osr_index = getelementptr inbounds %struct.hp206c_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pres_osr_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %__fc_i19.0.lcssa, ptr %pres_osr_index, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end56, %for.end, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %for.end56 ], [ 0, %for.end ], [ -22, %if.end.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hp206c_conv_and_read(ptr noundef %indio_dev, i8 noundef zeroext %conv_cmd, i8 noundef zeroext %read_cmd, i32 noundef %sleep_us) unnamed_addr #2 align 64 {
entry:
  %values.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client1 = getelementptr inbounds %struct.hp206c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %entry
  %inc13.i = phi i32 [ 1, %entry ], [ %inc.i, %if.end5.i.while.body.i_crit_edge ]
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -115) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #8
  br label %do.end

if.end.i:                                         ; preds = %while.body.i
  %and.i = and i32 %call.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end

if.end5.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #5
  %inc.i = add nuw nsw i32 %inc13.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %if.end5.i.do.end_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end5.i.do.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end5.i.do.end_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %do.end.i ], [ -110, %if.end5.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call3 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %conv_cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.14, i32 noundef %call3) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mul = mul i32 %sleep_us, 3
  %div48 = lshr i32 %mul, 1
  tail call void @usleep_range_state(i32 noundef %sleep_us, i32 noundef %div48, i32 noundef 2) #5
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %client1.i50 = getelementptr inbounds %struct.hp206c_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %client1.i50 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client1.i50, align 4
  br label %while.body.i54

while.body.i54:                                   ; preds = %if.end5.i62.while.body.i54_crit_edge, %if.end10
  %inc13.i51 = phi i32 [ 1, %if.end10 ], [ %inc.i60, %if.end5.i62.while.body.i54_crit_edge ]
  %call.i.i52 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext -115) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %cmp3.i53 = icmp slt i32 %call.i.i52, 0
  br i1 %cmp3.i53, label %do.end.i56, label %if.end.i59

do.end.i56:                                       ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i55 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55, ptr noundef nonnull @.str.21, i32 noundef %call.i.i52) #8
  br label %do.end16

if.end.i59:                                       ; preds = %while.body.i54
  %and.i57 = and i32 %call.i.i52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58, label %if.end5.i62, label %if.end18

if.end5.i62:                                      ; preds = %if.end.i59
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #5
  %inc.i60 = add nuw nsw i32 %inc13.i51, 1
  %exitcond.not.i61 = icmp eq i32 %inc.i60, 21
  br i1 %exitcond.not.i61, label %if.end5.i62.do.end16_crit_edge, label %if.end5.i62.while.body.i54_crit_edge

if.end5.i62.while.body.i54_crit_edge:             ; preds = %if.end5.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i54

if.end5.i62.do.end16_crit_edge:                   ; preds = %if.end5.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.end16:                                         ; preds = %if.end5.i62.do.end16_crit_edge, %do.end.i56
  %retval.0.i63.ph = phi i32 [ %call.i.i52, %do.end.i56 ], [ -110, %if.end5.i62.do.end16_crit_edge ]
  %dev17 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i63.ph) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end.i59
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %values.i) #5
  %8 = ptrtoint ptr %values.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %values.i, align 1, !annotation !91
  %9 = getelementptr inbounds [3 x i8], ptr %values.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !91
  %11 = getelementptr inbounds [3 x i8], ptr %values.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !91
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext %read_cmd, i8 noundef zeroext 3, ptr noundef nonnull %values.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end18.hp206c_read_20bit.exit.thread_crit_edge, label %if.end.i65

if.end18.hp206c_read_20bit.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %hp206c_read_20bit.exit.thread

if.end.i65:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 3
  br i1 %cmp1.not.i, label %hp206c_read_20bit.exit, label %if.end.i65.hp206c_read_20bit.exit.thread_crit_edge

if.end.i65.hp206c_read_20bit.exit.thread_crit_edge: ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %hp206c_read_20bit.exit.thread

hp206c_read_20bit.exit.thread:                    ; preds = %if.end.i65.hp206c_read_20bit.exit.thread_crit_edge, %if.end18.hp206c_read_20bit.exit.thread_crit_edge
  %retval.0.i67.ph = phi i32 [ -5, %if.end.i65.hp206c_read_20bit.exit.thread_crit_edge ], [ %call.i, %if.end18.hp206c_read_20bit.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %values.i) #5
  %dev25 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i67.ph) #8
  br label %cleanup

hp206c_read_20bit.exit:                           ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %values.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %values.i, align 1
  %conv.i.i.i = zext i8 %14 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %9, align 1
  %conv2.i.i.i = zext i8 %16 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %11, align 1
  %conv5.i.i.i = zext i8 %18 to i32
  %shl.i.i.masked.i = and i32 %shl.i.i.i, 983040
  %or.i.i.masked.i = or i32 %shl3.i.i.i, %shl.i.i.masked.i
  %and.i66 = or i32 %or.i.i.masked.i, %conv5.i.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %values.i) #5
  br label %cleanup

cleanup:                                          ; preds = %hp206c_read_20bit.exit, %hp206c_read_20bit.exit.thread, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call3, %do.end8 ], [ %retval.0.i63.ph, %do.end16 ], [ %retval.0.i67.ph, %hp206c_read_20bit.exit.thread ], [ %and.i66, %hp206c_read_20bit.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_hp206c__288_420_hp206c_driver_init6, !1, !"__initcall__kmod_hp206c__288_420_hp206c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/hp206c.c", i32 420, i32 1}
!2 = !{ptr @__exitcall_hp206c_driver_exit, !1, !"__exitcall_hp206c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/hp206c.c", i32 422, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/hp206c.c", i32 423, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/hp206c.c", i32 424, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/hp206c.c", i32 415, i32 11}
!12 = !{ptr @hp206c_driver, !13, !"hp206c_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/hp206c.c", i32 411, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/hp206c.c", i32 366, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hp206c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hp206c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hp206c_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/pressure/hp206c.c", i32 377, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/pressure/hp206c.c", i32 390, i32 3}
!27 = !{ptr @hp206c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hp206c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @hp206c_info, !30, !"hp206c_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/pressure/hp206c.c", i32 349, i32 30}
!31 = !{ptr @hp206c_attribute_group, !32, !"hp206c_attribute_group", i1 false, i1 false}
!32 = !{!"../drivers/iio/pressure/hp206c.c", i32 345, i32 37}
!33 = !{ptr @hp206c_attributes, !34, !"hp206c_attributes", i1 false, i1 false}
!34 = !{!"../drivers/iio/pressure/hp206c.c", i32 340, i32 26}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/pressure/hp206c.c", i32 338, i32 8}
!37 = !{ptr @iio_const_attr_sampling_frequency_available, !36, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!38 = !{ptr @hp206c_osr_rates_str, !39, !"hp206c_osr_rates_str", i1 false, i1 false}
!39 = !{!"../drivers/iio/pressure/hp206c.c", i32 80, i32 19}
!40 = !{ptr @hp206c_osr_rates, !41, !"hp206c_osr_rates", i1 false, i1 false}
!41 = !{!"../drivers/iio/pressure/hp206c.c", i32 79, i32 18}
!42 = !{ptr @hp206c_osr_settings, !43, !"hp206c_osr_settings", i1 false, i1 false}
!43 = !{!"../drivers/iio/pressure/hp206c.c", i32 71, i32 40}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/pressure/hp206c.c", i32 179, i32 3}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hp206c_conv_and_read._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @hp206c_conv_and_read._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/pressure/hp206c.c", i32 185, i32 3}
!51 = !{ptr @hp206c_conv_and_read._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hp206c_conv_and_read._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @hp206c_conv_and_read._entry.16, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/iio/pressure/hp206c.c", i32 193, i32 3}
!55 = !{ptr @hp206c_conv_and_read._entry_ptr.17, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/pressure/hp206c.c", i32 199, i32 3}
!58 = !{ptr @hp206c_conv_and_read._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hp206c_conv_and_read._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/pressure/hp206c.c", i32 117, i32 4}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hp206c_wait_dev_rdy._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @hp206c_wait_dev_rdy._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @hp206c_channels, !66, !"hp206c_channels", i1 false, i1 false}
!66 = !{!"../drivers/iio/pressure/hp206c.c", i32 323, i32 35}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/pressure/hp206c.c", i32 151, i32 3}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @hp206c_soft_reset._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @hp206c_soft_reset._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/pressure/hp206c.c", i32 159, i32 3}
!74 = !{ptr @hp206c_soft_reset._entry.25, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @hp206c_soft_reset._entry_ptr.27, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/pressure/hp206c.c", i32 165, i32 3}
!78 = !{ptr @hp206c_soft_reset._entry.28, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @hp206c_soft_reset._entry_ptr.30, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @hp206c_id, !81, !"hp206c_id", i1 false, i1 false}
!81 = !{!"../drivers/iio/pressure/hp206c.c", i32 397, i32 35}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
