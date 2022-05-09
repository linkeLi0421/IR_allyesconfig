; ModuleID = '/llk/IR_all_yes/drivers/iio/cdc/ad7150.c_pt.bc'
source_filename = "../drivers/iio/cdc/ad7150.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.ad7150_chip_info = type { ptr, [2 x [2 x i16]], [2 x [2 x i8]], [2 x [2 x i8]], %struct.mutex, [2 x i32], [2 x i8], i32, i32 }

@__initcall__kmod_ad7150__318_669_ad7150_driver_init6 = internal global ptr @ad7150_driver_init, section ".initcall6.init", align 4
@ad7150_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad7150_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7150_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad7150_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad7150_driver_exit = internal global ptr @ad7150_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [45 x i8] c"ad7150.author=Barry Song <21cnbao@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [70 x i8] c"ad7150.description=Analog Devices AD7150/1/6 capacitive sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [35 x i8] c"ad7150.file=drivers/iio/cdc/ad7150\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [22 x i8] c"ad7150.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7150\00", [25 x i8] zeroinitializer }, align 32
@ad7150_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] c"adi,ad7150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id { [32 x i8] c"adi,ad7151\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id { [32 x i8] c"adi,ad7156\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ad7150_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad7150\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad7151\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ad7156\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ad7150_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->state_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ad7150_irq1\00", [20 x i8] zeroinitializer }, align 32
@ad7150_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @ad7150_event_attribute_group, ptr null, ptr @ad7150_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7150_read_event_config, ptr @ad7150_write_event_config, ptr @ad7150_read_event_value, ptr @ad7150_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7150_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 14, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 513, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @ad7150_events, i32 4, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 14, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 513, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @ad7150_events, i32 4, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ad7150_irq2\00", [20 x i8] zeroinitializer }, align 32
@ad7151_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 14, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 513, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @ad7150_events, i32 4, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad7150_info_no_irq = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7150_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7150_channels_no_irq = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 14, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 513, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 14, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 513, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@ad7151_channels_no_irq = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 14, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 513, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad7150_event_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.5, ptr null, ptr null, ptr @ad7150_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@ad7150_event_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_capacitance_thresh_adaptive_timeout_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_in_capacitance_thresh_adaptive_timeout_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.6, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[0 0.01 0.15]\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"in_capacitance_thresh_adaptive_timeout_available\00", [47 x i8] zeroinitializer }, align 32
@ad7150_addresses = internal constant { [2 x [6 x i8]], [20 x i8] } { [2 x [6 x i8]] [[6 x i8] c"\01\05\0B\09\09\0A", [6 x i8] c"\03\07\0E\0C\0C\0D"], [20 x i8] zeroinitializer }, align 32
@ad7150_events = internal constant { [4 x %struct.iio_event_spec], [32 x i8] } { [4 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 3, i32 1, i32 67, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 3, i32 2, i32 67, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 9, i64 12]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"ad7150_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 661, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 663, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"ad7150_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 655, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"ad7150_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 646, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 559, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 566, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 595, i32 7 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"ad7150_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 526, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"ad7150_channels\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 461, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 612, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"ad7151_channels\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 471, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"ad7150_info_no_irq\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 535, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"ad7150_channels_no_irq\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 466, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"ad7151_channels_no_irq\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 475, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [29 x i8] c"ad7150_event_attribute_group\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 521, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 523, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"ad7150_event_attributes\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 515, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant [64 x i8] c"iio_const_attr_in_capacitance_thresh_adaptive_timeout_available\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 512, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"ad7150_addresses\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 92, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"ad7150_events\00", align 1
@___asan_gen_.83 = private constant [28 x i8] c"../drivers/iio/cdc/ad7150.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 411, i32 36 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_ad7150_driver_exit, ptr @__initcall__kmod_ad7150__318_669_ad7150_driver_init6, ptr @ad7150_driver_exit, ptr @ad7150_driver, ptr @.str, ptr @ad7150_of_match, ptr @ad7150_id, ptr @ad7150_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ad7150_info, ptr @ad7150_channels, ptr @.str.4, ptr @ad7151_channels, ptr @ad7150_info_no_irq, ptr @ad7150_channels_no_irq, ptr @ad7151_channels_no_irq, ptr @ad7150_event_attribute_group, ptr @.str.5, ptr @ad7150_event_attributes, ptr @iio_const_attr_in_capacitance_thresh_adaptive_timeout_available, ptr @.str.6, ptr @.str.7, ptr @ad7150_addresses, ptr @ad7150_events], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7151_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_info_no_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_channels_no_irq to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7151_channels_no_irq to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_event_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_event_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_capacitance_thresh_adaptive_timeout_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_addresses to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7150_events to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7150_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad7150_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7150_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ad7150_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7150_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 132) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %state_lock = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %state_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad7150_probe.__key) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %id, ptr %name3, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 8
  %call5 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @regulator_enable(ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ad7150_reg_disable, ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end18, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %call5) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call20 = tail call ptr @dev_fwnode(ptr noundef %dev) #5
  %call21 = tail call i32 @fwnode_irq_get(ptr noundef %call20, i32 noundef 0) #5
  %interrupts = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %interrupts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call21, ptr %interrupts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end27

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp28 = icmp eq i32 %8, 0
  br i1 %cmp28, label %if.then29, label %if.end27.if.end42_crit_edge

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then29:                                        ; preds = %if.end27
  %call31 = tail call ptr @dev_fwnode(ptr noundef %dev) #5
  %call32 = tail call i32 @fwnode_irq_get(ptr noundef %call31, i32 noundef 1) #5
  %arrayidx34 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp37 = icmp slt i32 %call32, 0
  br i1 %cmp37, label %if.then29.cleanup_crit_edge, label %if.then29.if.end42_crit_edge

if.then29.if.end42_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.then29.if.end42_crit_edge, %if.end27.if.end42_crit_edge
  %10 = ptrtoint ptr %interrupts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interrupts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool45.not = icmp eq i32 %11, 0
  br i1 %tobool45.not, label %if.end42.if.else_crit_edge, label %land.lhs.true

if.end42.if.else_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end42
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp47 = icmp eq i32 %13, 1
  br i1 %cmp47, label %land.lhs.true.if.then51_crit_edge, label %lor.lhs.false

land.lhs.true.if.then51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx49 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool50.not = icmp eq i32 %15, 0
  br i1 %tobool50.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.then51_crit_edge

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then51:                                        ; preds = %lor.lhs.false.if.then51_crit_edge, %land.lhs.true.if.then51_crit_edge
  tail call void @irq_modify_status(i32 noundef %11, i32 noundef 0, i32 noundef 4096) #5
  %16 = ptrtoint ptr %interrupts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interrupts, align 4
  %call57 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %17, ptr noundef null, ptr noundef nonnull @ad7150_event_handler_ch1, i32 noundef 8193, ptr noundef nonnull @.str.3, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.then51
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ad7150_info, ptr %info, align 8
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_data, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end60.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end60.if.end84.sink.split_crit_edge
  ]

if.end60.if.end84.sink.split_crit_edge:           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.sink.split

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end60
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ad7150_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %23 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %num_channels, align 4
  %arrayidx63 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx63, align 4
  tail call void @irq_modify_status(i32 noundef %25, i32 noundef 0, i32 noundef 4096) #5
  %26 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx63, align 4
  %call67 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %27, ptr noundef null, ptr noundef nonnull @ad7150_event_handler_ch2, i32 noundef 8193, ptr noundef nonnull @.str.4, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %sw.bb.if.end84_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.if.end84_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end42.if.else_crit_edge
  %info74 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %28 = ptrtoint ptr %info74 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ad7150_info_no_irq, ptr %info74, align 8
  %29 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %driver_data, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %30, label %if.else.cleanup_crit_edge [
    i32 0, label %if.else.if.end84.sink.split_crit_edge
    i32 1, label %sw.bb79
  ]

if.else.if.end84.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb79:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.sink.split

if.end84.sink.split:                              ; preds = %sw.bb79, %if.else.if.end84.sink.split_crit_edge, %if.end60.if.end84.sink.split_crit_edge
  %ad7150_channels_no_irq.sink = phi ptr [ @ad7151_channels_no_irq, %sw.bb79 ], [ @ad7151_channels, %if.end60.if.end84.sink.split_crit_edge ], [ @ad7150_channels_no_irq, %if.else.if.end84.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %sw.bb79 ], [ %20, %if.end60.if.end84.sink.split_crit_edge ], [ 2, %if.else.if.end84.sink.split_crit_edge ]
  %channels77 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %32 = ptrtoint ptr %channels77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ad7150_channels_no_irq.sink, ptr %channels77, align 8
  %num_channels78 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %33 = ptrtoint ptr %num_channels78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %num_channels78, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %sw.bb.if.end84_crit_edge
  %parent = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 8
  %call86 = tail call i32 @__devm_iio_device_register(ptr noundef %35, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.else.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end9.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ %call86, %if.end84 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call21, %if.end18.cleanup_crit_edge ], [ %call32, %if.then29.cleanup_crit_edge ], [ %call57, %if.then51.cleanup_crit_edge ], [ %call67, %sw.bb.cleanup_crit_edge ], [ -22, %if.end60.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7150_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7150_event_handler_ch1(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %call1.i = tail call i64 @iio_get_time_ns(ptr noundef %private) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #5
  %4 = and i32 %call2.i, -2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %.not = icmp eq i32 %4, 8
  br i1 %.not, label %if.end4.i, label %entry.__ad7150_event_handler.exit_crit_edge

entry.__ad7150_event_handler.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ad7150_event_handler.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %type.i = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %conv5.i = zext i32 %6 to i64
  %shl.i = shl i64 %conv5.i, 56
  %dir.i = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir.i, align 4
  %conv6.i = zext i32 %8 to i64
  %shl7.i = shl i64 %conv6.i, 48
  %or10.i = or i64 %shl.i, %shl7.i
  %or15.i = or i64 %or10.i, 60129542144
  %call16.i = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef %or15.i, i64 noundef %call1.i) #5
  br label %__ad7150_event_handler.exit

__ad7150_event_handler.exit:                      ; preds = %if.end4.i, %entry.__ad7150_event_handler.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7150_event_handler_ch2(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %call1.i = tail call i64 @iio_get_time_ns(ptr noundef %private) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #5
  %4 = and i32 %call2.i, -2147483616
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %.not = icmp eq i32 %4, 32
  br i1 %.not, label %if.end4.i, label %entry.__ad7150_event_handler.exit_crit_edge

entry.__ad7150_event_handler.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ad7150_event_handler.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %type.i = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %conv5.i = zext i32 %6 to i64
  %shl.i = shl i64 %conv5.i, 56
  %dir.i = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir.i, align 4
  %conv6.i = zext i32 %8 to i64
  %shl7.i = shl i64 %conv6.i, 48
  %or8.i = or i64 %shl.i, %shl7.i
  %or15.i = or i64 %or8.i, 60129542145
  %call16.i = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef %or15.i, i64 noundef %call1.i) #5
  br label %__ad7150_event_handler.exit

__ad7150_event_handler.exit:                      ; preds = %if.end4.i, %entry.__ad7150_event_handler.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7150_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel1 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel1, align 4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb4
    i32 2, label %sw.bb12
    i32 3, label %sw.bb13
    i32 12, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr [2 x [6 x i8]], ptr @ad7150_addresses, i32 0, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i32 %call.i to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #5
  %10 = lshr i16 %9, 4
  %11 = zext i16 %10 to i32
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %arrayidx7 = getelementptr [2 x [6 x i8]], ptr @ad7150_addresses, i32 0, i32 %3, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7, align 1
  %call.i28 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %14, i8 noundef zeroext %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp.i29 = icmp slt i32 %call.i28, 0
  br i1 %cmp.i29, label %sw.bb4.cleanup_crit_edge, label %if.end11

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i30 = trunc i32 %call.i28 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i30) #5
  %conv1.i31 = zext i16 %17 to i32
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv1.i31, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1000, ptr %val, align 4
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2559, ptr %val2, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -768, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 100, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb13, %sw.bb12, %if.end11, %sw.bb4.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb14 ], [ 1, %sw.bb13 ], [ 10, %sw.bb12 ], [ 1, %if.end11 ], [ 1, %if.end ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i28, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7150_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13:                                         ; preds = %entry
  %4 = trunc i32 %call1 to i8
  %5 = lshr i8 %4, 5
  %conv = and i8 %5, 3
  %6 = and i32 %call1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %type, label %do.end13.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 0, label %sw.bb47
  ]

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp32 = icmp eq i32 %dir, 1
  br i1 %cmp32, label %if.then34, label %if.end39

if.then34:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv)
  %cmp37 = icmp eq i8 %conv, 1
  %narrow87 = select i1 %tobool.not, i1 %cmp37, i1 false
  %8 = zext i1 %narrow87 to i32
  br label %cleanup

if.end39:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp43 = icmp eq i8 %conv, 0
  %narrow86 = select i1 %tobool.not, i1 %cmp43, i1 false
  %9 = zext i1 %narrow86 to i32
  br label %cleanup

sw.bb47:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp48 = icmp eq i32 %dir, 1
  br i1 %cmp48, label %if.then50, label %if.end59

if.then50:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv)
  %cmp55 = icmp eq i8 %conv, 1
  %not.tobool.not85 = xor i1 %tobool.not, true
  %narrow84 = select i1 %not.tobool.not85, i1 %cmp55, i1 false
  %10 = zext i1 %narrow84 to i32
  br label %cleanup

if.end59:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp64 = icmp eq i8 %conv, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %narrow = select i1 %not.tobool.not, i1 %cmp64, i1 false
  %11 = zext i1 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then50, %if.end39, %if.then34, %do.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then50 ], [ %11, %if.end59 ], [ %8, %if.then34 ], [ %9, %if.end39 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %do.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7150_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then.cleanup119_crit_edge, label %land.lhs.true

if.then.cleanup119_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup119

land.lhs.true:                                    ; preds = %if.then
  %type2 = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %type)
  %cmp = icmp eq i32 %7, %type
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.cleanup119_crit_edge

land.lhs.true.cleanup119_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup119

land.lhs.true3:                                   ; preds = %land.lhs.true
  %dir4 = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dir4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %dir)
  %cmp5 = icmp eq i32 %9, %dir
  br i1 %cmp5, label %if.then6, label %land.lhs.true3.cleanup119_crit_edge

land.lhs.true3.cleanup119_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup119

if.then6:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 5, i32 %3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  tail call void @disable_irq(i32 noundef %11) #5
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %arrayidx11 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 6, i32 %13
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx11, align 1
  br label %cleanup119

if.end12:                                         ; preds = %entry
  %state_lock = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %type13 = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %type13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %type)
  %cmp14.not = icmp eq i32 %16, %type
  br i1 %cmp14.not, label %lor.lhs.false, label %if.end12.if.then17_crit_edge

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end12
  %dir15 = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %dir15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dir15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %dir)
  %cmp16.not = icmp eq i32 %18, %dir
  br i1 %cmp16.not, label %lor.lhs.false.if.end105_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.if.end105_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end12.if.then17_crit_edge
  %interrupts19 = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %interrupts19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interrupts19, align 4
  tail call void @disable_irq(i32 noundef %20) #5
  %arrayidx22 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22, align 4
  tail call void @disable_irq(i32 noundef %22) #5
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then17.error_ret_crit_edge, label %if.end27

if.then17.error_ret_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end27:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp18 = icmp eq i32 %dir, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp29.not = icmp eq i32 %type, 3
  %25 = select i1 %cmp29.not, i8 0, i8 -128
  %26 = select i1 %cmp18, i8 32, i8 0
  %or164 = or i8 %26, %25
  %27 = trunc i32 %call23 to i8
  %28 = and i8 %27, 31
  %conv84 = or i8 %or164, %28
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call86 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 15, i8 noundef zeroext %conv84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end27.error_ret_crit_edge, label %if.end90

if.end27.error_ret_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.end90:                                         ; preds = %if.end27
  %31 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %type, ptr %type13, align 4
  %dir92 = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %dir92 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dir, ptr %dir92, align 4
  %channel93 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %33 = ptrtoint ptr %channel93 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel93, align 4
  %call94 = tail call fastcc i32 @ad7150_write_event_params(ptr noundef %indio_dev, i32 noundef %34, i32 noundef %type, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup, label %if.end90.error_ret_crit_edge

if.end90.error_ret_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

cleanup:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %interrupts19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interrupts19, align 4
  tail call void @enable_irq(i32 noundef %36) #5
  %37 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx22, align 4
  tail call void @enable_irq(i32 noundef %38) #5
  br label %if.end105

if.end105:                                        ; preds = %cleanup, %lor.lhs.false.if.end105_crit_edge
  %channel107 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %39 = ptrtoint ptr %channel107 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel107, align 4
  %arrayidx108 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 6, i32 %40
  %41 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx108, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool109.not = icmp eq i8 %42, 0
  br i1 %tobool109.not, label %if.then110, label %if.end105.error_ret_crit_edge

if.end105.error_ret_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_ret

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx113 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 5, i32 %40
  %43 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx113, align 4
  tail call void @enable_irq(i32 noundef %44) #5
  %45 = ptrtoint ptr %channel107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel107, align 4
  %arrayidx116 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 6, i32 %46
  %47 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx116, align 1
  br label %error_ret

error_ret:                                        ; preds = %if.then110, %if.end105.error_ret_crit_edge, %if.end90.error_ret_crit_edge, %if.end27.error_ret_crit_edge, %if.then17.error_ret_crit_edge
  %ret.2 = phi i32 [ 0, %if.end105.error_ret_crit_edge ], [ 0, %if.then110 ], [ %call94, %if.end90.error_ret_crit_edge ], [ %call86, %if.end27.error_ret_crit_edge ], [ %call23, %if.then17.error_ret_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  br label %cleanup119

cleanup119:                                       ; preds = %error_ret, %if.then6, %land.lhs.true3.cleanup119_crit_edge, %land.lhs.true.cleanup119_crit_edge, %if.then.cleanup119_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error_ret ], [ 0, %if.then6 ], [ 0, %land.lhs.true3.cleanup119_crit_edge ], [ 0, %land.lhs.true.cleanup119_crit_edge ], [ 0, %if.then.cleanup119_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7150_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %conv = zext i1 %cmp to i32
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %type, label %sw.bb.cleanup_crit_edge [
    i32 3, label %sw.bb1
    i32 0, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %arrayidx2 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 2, i32 %conv, i32 %5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv3, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %channel6 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %9 = ptrtoint ptr %channel6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel6, align 4
  %arrayidx7 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 1, i32 %conv, i32 %10
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %12 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv8, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val, align 4
  %channel11 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %15 = ptrtoint ptr %channel11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel11, align 4
  %arrayidx12 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 3, i32 %conv, i32 %16
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %18 to i32
  %mul = mul nuw nsw i32 %conv13, 10000
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb4, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb9 ], [ 1, %sw.bb4 ], [ 1, %sw.bb1 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7150_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %conv = zext i1 %cmp to i32
  %state_lock = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %info, label %entry.cleanup27_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb9
  ]

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %type, label %sw.bb.cleanup27_crit_edge [
    i32 3, label %sw.bb1
    i32 0, label %sw.bb4
  ]

sw.bb.cleanup27_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %conv2 = trunc i32 %val to i8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %arrayidx3 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 2, i32 %conv, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %arrayidx3, align 1
  br label %sw.epilog23

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %conv5 = trunc i32 %val to i16
  %channel7 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel7, align 4
  %arrayidx8 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 1, i32 %conv, i32 %8
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv5, ptr %arrayidx8, align 2
  br label %sw.epilog23

sw.bb9:                                           ; preds = %entry
  %10 = add i32 %val2, 9999
  call void @__sanitizer_cov_trace_const_cmp4(i32 169999, i32 %10)
  %11 = icmp ult i32 %10, 169999
  %div = sdiv i32 %val2, 10000
  %12 = mul i32 %div, 10000
  %rem.decomposed = sub i32 %val2, %12
  %13 = or i32 %rem.decomposed, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %11, %14
  br i1 %15, label %cleanup.thread, label %sw.bb9.cleanup27_crit_edge

sw.bb9.cleanup27_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

cleanup.thread:                                   ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %conv18 = trunc i32 %div to i8
  %channel20 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %channel20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel20, align 4
  %arrayidx21 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 3, i32 %conv, i32 %17
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv18, ptr %arrayidx21, align 1
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %cleanup.thread, %sw.bb4, %sw.bb1
  %channel24 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %19 = ptrtoint ptr %channel24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel24, align 4
  %call25 = tail call fastcc i32 @ad7150_write_event_params(ptr noundef %indio_dev, i32 noundef %20, i32 noundef %type, i32 noundef %dir)
  br label %cleanup27

cleanup27:                                        ; preds = %sw.epilog23, %sw.bb9.cleanup27_crit_edge, %sw.bb.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %ret.1 = phi i32 [ %call25, %sw.epilog23 ], [ -22, %sw.bb.cleanup27_crit_edge ], [ -22, %entry.cleanup27_crit_edge ], [ -22, %sw.bb9.cleanup27_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7150_write_event_params(ptr nocapture noundef readonly %indio_dev, i32 noundef %chan, i32 noundef %type, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %conv = zext i1 %cmp to i32
  %type1 = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp2.not = icmp eq i32 %3, %type
  br i1 %cmp2.not, label %lor.lhs.false, label %entry.cleanup90_crit_edge

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup90

lor.lhs.false:                                    ; preds = %entry
  %dir4 = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dir4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %dir)
  %cmp5.not = icmp eq i32 %5, %dir
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup90_crit_edge

lor.lhs.false.cleanup90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup90

if.end:                                           ; preds = %lor.lhs.false
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %type, label %if.end.cleanup90_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb11
  ]

if.end.cleanup90_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup90

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx7 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 1, i32 %conv, i32 %chan
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx7, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %arrayidx9 = getelementptr [2 x [6 x i8]], ptr @ad7150_addresses, i32 0, i32 %chan, i32 3
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %8) #5
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %10, i8 noundef zeroext %12, i16 noundef zeroext %13) #5
  br label %cleanup90

sw.bb11:                                          ; preds = %if.end
  %arrayidx13 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 2, i32 %conv, i32 %chan
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx16 = getelementptr [2 x [6 x i8]], ptr @ad7150_addresses, i32 0, i32 %chan, i32 4
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16, align 1
  %call17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %19, i8 noundef zeroext %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %do.body23, label %sw.bb11.cleanup90_crit_edge

sw.bb11.cleanup90_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup90

do.body23:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25 = getelementptr %struct.ad7150_chip_info, ptr %1, i32 0, i32 3, i32 1, i32 %chan
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx25, align 1
  %thresh_timeout = getelementptr inbounds %struct.ad7150_chip_info, ptr %1, i32 0, i32 3
  %arrayidx56 = getelementptr [2 x i8], ptr %thresh_timeout, i32 0, i32 %chan
  %22 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx56, align 1
  %shl = shl i8 %21, 4
  %24 = and i8 %23, 15
  %or119 = or i8 %24, %shl
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %arrayidx86 = getelementptr [2 x [6 x i8]], ptr @ad7150_addresses, i32 0, i32 %chan, i32 5
  %27 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx86, align 1
  %call87 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext %28, i8 noundef zeroext %or119) #5
  br label %cleanup90

cleanup90:                                        ; preds = %do.body23, %sw.bb11.cleanup90_crit_edge, %sw.bb, %if.end.cleanup90_crit_edge, %lor.lhs.false.cleanup90_crit_edge, %entry.cleanup90_crit_edge
  %retval.1 = phi i32 [ %call.i, %sw.bb ], [ 0, %lor.lhs.false.cleanup90_crit_edge ], [ 0, %entry.cleanup90_crit_edge ], [ %call87, %do.body23 ], [ %call17, %sw.bb11.cleanup90_crit_edge ], [ -22, %if.end.cleanup90_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_ad7150__318_669_ad7150_driver_init6, !1, !"__initcall__kmod_ad7150__318_669_ad7150_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/cdc/ad7150.c", i32 669, i32 1}
!2 = !{ptr @__exitcall_ad7150_driver_exit, !1, !"__exitcall_ad7150_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author319, !4, !"__UNIQUE_ID_author319", i1 false, i1 false}
!4 = !{!"../drivers/iio/cdc/ad7150.c", i32 671, i32 1}
!5 = !{ptr @__UNIQUE_ID_description320, !6, !"__UNIQUE_ID_description320", i1 false, i1 false}
!6 = !{!"../drivers/iio/cdc/ad7150.c", i32 672, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/iio/cdc/ad7150.c", i32 673, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/cdc/ad7150.c", i32 663, i32 11}
!12 = !{ptr @ad7150_driver, !13, !"ad7150_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/cdc/ad7150.c", i32 661, i32 26}
!14 = !{ptr @ad7150_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/cdc/ad7150.c", i32 559, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/cdc/ad7150.c", i32 566, i32 41}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/cdc/ad7150.c", i32 595, i32 7}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/cdc/ad7150.c", i32 612, i32 8}
!23 = !{ptr @ad7150_info, !24, !"ad7150_info", i1 false, i1 false}
!24 = !{!"../drivers/iio/cdc/ad7150.c", i32 526, i32 30}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/cdc/ad7150.c", i32 523, i32 10}
!27 = !{ptr @ad7150_event_attribute_group, !28, !"ad7150_event_attribute_group", i1 false, i1 false}
!28 = !{!"../drivers/iio/cdc/ad7150.c", i32 521, i32 37}
!29 = !{ptr @ad7150_event_attributes, !30, !"ad7150_event_attributes", i1 false, i1 false}
!30 = !{!"../drivers/iio/cdc/ad7150.c", i32 515, i32 26}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/cdc/ad7150.c", i32 512, i32 8}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @iio_const_attr_in_capacitance_thresh_adaptive_timeout_available, !32, !"iio_const_attr_in_capacitance_thresh_adaptive_timeout_available", i1 false, i1 false}
!35 = !{ptr @ad7150_addresses, !36, !"ad7150_addresses", i1 false, i1 false}
!36 = !{!"../drivers/iio/cdc/ad7150.c", i32 92, i32 17}
!37 = !{ptr @ad7150_channels, !38, !"ad7150_channels", i1 false, i1 false}
!38 = !{!"../drivers/iio/cdc/ad7150.c", i32 461, i32 35}
!39 = !{ptr @ad7150_events, !40, !"ad7150_events", i1 false, i1 false}
!40 = !{!"../drivers/iio/cdc/ad7150.c", i32 411, i32 36}
!41 = !{ptr @ad7151_channels, !42, !"ad7151_channels", i1 false, i1 false}
!42 = !{!"../drivers/iio/cdc/ad7150.c", i32 471, i32 35}
!43 = !{ptr @ad7150_info_no_irq, !44, !"ad7150_info_no_irq", i1 false, i1 false}
!44 = !{!"../drivers/iio/cdc/ad7150.c", i32 535, i32 30}
!45 = !{ptr @ad7150_channels_no_irq, !46, !"ad7150_channels_no_irq", i1 false, i1 false}
!46 = !{!"../drivers/iio/cdc/ad7150.c", i32 466, i32 35}
!47 = !{ptr @ad7151_channels_no_irq, !48, !"ad7151_channels_no_irq", i1 false, i1 false}
!48 = !{!"../drivers/iio/cdc/ad7150.c", i32 475, i32 35}
!49 = !{ptr @ad7150_of_match, !50, !"ad7150_of_match", i1 false, i1 false}
!50 = !{!"../drivers/iio/cdc/ad7150.c", i32 655, i32 34}
!51 = !{ptr @ad7150_id, !52, !"ad7150_id", i1 false, i1 false}
!52 = !{!"../drivers/iio/cdc/ad7150.c", i32 646, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
