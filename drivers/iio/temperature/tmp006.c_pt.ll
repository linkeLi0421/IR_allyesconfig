; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/tmp006.c_pt.bc'
source_filename = "../drivers/iio/temperature/tmp006.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.tmp006_data = type { ptr, i16 }

@__initcall__kmod_tmp006__288_292_tmp006_driver_init6 = internal global ptr @tmp006_driver_init, section ".initcall6.init", align 4
@tmp006_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tmp006_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmp006_pm_ops, ptr null, ptr null }, ptr @tmp006_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tmp006_driver_exit = internal global ptr @tmp006_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [49 x i8] c"tmp006.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"tmp006.description=TI TMP006 IR thermopile sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"tmp006.file=drivers/iio/temperature/tmp006\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"tmp006.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp006\00", [25 x i8] zeroinitializer }, align 32
@tmp006_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tmp006_suspend, ptr @tmp006_resume, ptr @tmp006_suspend, ptr @tmp006_resume, ptr @tmp006_suspend, ptr @tmp006_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tmp006_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tmp006\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tmp006_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no TMP006 sensor\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tmp006_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/temperature/tmp006.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmp006_probe._entry_ptr = internal global ptr @tmp006_probe._entry, section ".printk_index", align 4
@tmp006_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @tmp006_attribute_group, ptr @tmp006_read_raw, ptr null, ptr null, ptr @tmp006_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tmp006_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@tmp006_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tmp006_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@tmp006_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.6, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"4 2 1 0.5 0.25\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@tmp006_freqs = internal constant { [5 x [2 x i32]], [56 x i8] } { [5 x [2 x i32]] [[2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000]], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 250000, i64 500000]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"tmp006_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 284, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 286, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"tmp006_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 276, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"tmp006_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 278, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 226, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"tmp006_info\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 175, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"tmp006_channels\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 160, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"tmp006_attribute_group\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 156, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"tmp006_attributes\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 151, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 149, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"tmp006_freqs\00", align 1
@___asan_gen_.64 = private constant [36 x i8] c"../drivers/iio/temperature/tmp006.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 70, i32 18 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tmp006_driver_exit, ptr @__initcall__kmod_tmp006__288_292_tmp006_driver_init6, ptr @tmp006_driver_exit, ptr @tmp006_probe._entry, ptr @tmp006_probe._entry_ptr, ptr @tmp006_driver, ptr @.str, ptr @tmp006_pm_ops, ptr @tmp006_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tmp006_info, ptr @tmp006_channels, ptr @tmp006_attribute_group, ptr @tmp006_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.6, ptr @.str.7, ptr @tmp006_freqs], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp006_freqs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp006_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tmp006_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmp006_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tmp006_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp006_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i65 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %cmp.i.i = icmp slt i32 %call.i.i65, 0
  %conv.i.i = trunc i32 %call.i.i65 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #5
  %conv1.i.i = zext i16 %6 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i65, i32 %conv1.i.i
  br i1 %cmp.i.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call.i11.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp.i12.i, label %if.end.i.do.end_crit_edge, label %tmp006_check_identification.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

tmp006_check_identification.exit:                 ; preds = %if.end.i
  %conv.i13.i = trunc i32 %call.i11.i to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 21577, i32 %cond.i.i)
  %cmp5.i = icmp eq i32 %cond.i.i, 21577
  call void @__sanitizer_cov_trace_const_cmp2(i16 26368, i16 %conv.i13.i)
  %cmp6.i = icmp eq i16 %conv.i13.i, 26368
  %spec.select.i = select i1 %cmp5.i, i1 %cmp6.i, i1 false
  br i1 %spec.select.i, label %if.end3, label %tmp006_check_identification.exit.do.end_crit_edge

tmp006_check_identification.exit.do.end_crit_edge: ; preds = %tmp006_check_identification.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %tmp006_check_identification.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end3:                                          ; preds = %tmp006_check_identification.exit
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call5 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev4, i32 noundef 8) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %8, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i66, label %if.end8.dev_name.exit_crit_edge

if.end8.dev_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i66:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i66, %if.end8.dev_name.exit_crit_edge
  %retval.0.i67 = phi ptr [ %14, %if.end.i66 ], [ %12, %if.end8.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 15
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i67, ptr %name, align 8
  %16 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call5, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 17
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tmp006_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 13
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tmp006_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 14
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %num_channels, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %8, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %21, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i68 = icmp slt i32 %call.i, 0
  br i1 %cmp.i68, label %dev_name.exit.cleanup_crit_edge, label %if.end16

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %dev_name.exit
  %conv.i69 = trunc i32 %call.i to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv.i69) #5
  %config = getelementptr inbounds %struct.tmp006_data, ptr %8, i32 0, i32 1
  %23 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %config, align 4
  %24 = and i16 %22, 28672
  call void @__sanitizer_cov_trace_const_cmp2(i16 28672, i16 %24)
  %cmp17.not = icmp eq i16 %24, 28672
  br i1 %cmp17.not, label %if.end16.if.end26_crit_edge, label %if.then19

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i.i, align 8
  %config.i = getelementptr inbounds %struct.tmp006_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %config.i, align 4
  %.sink.i = or i16 %30, 28672
  store i16 %.sink.i, ptr %config.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %.sink.i) #5
  %call.i.i70 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %32, i8 noundef zeroext 2, i16 noundef zeroext %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp22 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp22, label %if.then19.cleanup_crit_edge, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.then19.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %call.i71 = tail call i32 @devm_add_action(ptr noundef %dev4, ptr noundef nonnull @tmp006_powerdown_cleanup, ptr noundef %dev4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %if.end26.if.end33_crit_edge, label %devm_add_action_or_reset.exit

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

devm_add_action_or_reset.exit:                    ; preds = %if.end26
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i.i.i.i, align 8
  %config.i.i.i = getelementptr inbounds %struct.tmp006_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %config.i.i.i, align 4
  %40 = and i16 %39, -28673
  store i16 %40, ptr %config.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %37, align 4
  %43 = tail call i16 @llvm.bswap.i16(i16 %40) #5
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %42, i8 noundef zeroext 2, i16 noundef zeroext %43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp30 = icmp slt i32 %call.i71, 0
  br i1 %cmp30, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end33_crit_edge

devm_add_action_or_reset.exit.if.end33_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %devm_add_action_or_reset.exit.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %call35 = tail call i32 @__devm_iio_device_register(ptr noundef %dev4, ptr noundef nonnull %call5, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %devm_add_action_or_reset.exit.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end33 ], [ -19, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %call.i, %dev_name.exit.cleanup_crit_edge ], [ %call.i.i70, %if.then19.cleanup_crit_edge ], [ %call.i71, %devm_add_action_or_reset.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmp006_powerdown_cleanup(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %config.i = getelementptr inbounds %struct.tmp006_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %config.i, align 4
  %6 = and i16 %5, -28673
  store i16 %6, ptr %config.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %8, i8 noundef zeroext 2, i16 noundef zeroext %9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp006_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb16
    i32 12, label %sw.bb27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.while.body.i_crit_edge
    i32 9, label %sw.bb.while.body.i59_crit_edge
  ]

sw.bb.while.body.i59_crit_edge:                   ; preds = %sw.bb
  br label %while.body.i59

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %dec23.i = phi i32 [ %dec.i, %if.end3.i.while.body.i_crit_edge ], [ 49, %sw.bb.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %8 = and i32 %call.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end6.i

if.end3.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 100) #5
  %dec.i = add nsw i32 %dec23.i, -1
  %cmp.not.i = icmp eq i32 %dec23.i, 0
  br i1 %cmp.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i14.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %10, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp.i15.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp.i15.i, label %if.end6.i.cleanup_crit_edge, label %if.end

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i16.i = trunc i32 %call.i14.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i16.i) #5
  br label %if.end15

while.body.i59:                                   ; preds = %if.end3.i64.while.body.i59_crit_edge, %sw.bb.while.body.i59_crit_edge
  %dec23.i56 = phi i32 [ %dec.i62, %if.end3.i64.while.body.i59_crit_edge ], [ 49, %sw.bb.while.body.i59_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i.i57 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %13, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %cmp.i.i58 = icmp slt i32 %call.i.i57, 0
  br i1 %cmp.i.i58, label %while.body.i59.cleanup_crit_edge, label %if.end.i61

while.body.i59.cleanup_crit_edge:                 ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i61:                                       ; preds = %while.body.i59
  %14 = and i32 %call.i.i57, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i60 = icmp eq i32 %14, 0
  br i1 %tobool.not.i60, label %if.end3.i64, label %if.end6.i70

if.end3.i64:                                      ; preds = %if.end.i61
  tail call void @msleep(i32 noundef 100) #5
  %dec.i62 = add nsw i32 %dec23.i56, -1
  %cmp.not.i63 = icmp eq i32 %dec23.i56, 0
  br i1 %cmp.not.i63, label %if.end3.i64.cleanup_crit_edge, label %if.end3.i64.while.body.i59_crit_edge

if.end3.i64.while.body.i59_crit_edge:             ; preds = %if.end3.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i59

if.end3.i64.cleanup_crit_edge:                    ; preds = %if.end3.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6.i70:                                      ; preds = %if.end.i61
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i14.i65 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %16, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i65)
  %cmp.i15.i66 = icmp slt i32 %call.i14.i65, 0
  br i1 %cmp.i15.i66, label %if.end6.i70.cleanup_crit_edge, label %if.end11

if.end6.i70.cleanup_crit_edge:                    ; preds = %if.end6.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6.i70
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i16.i67 = trunc i32 %call.i14.i65 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i16.i67) #5
  %18 = ashr i16 %17, 2
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %if.end
  %storemerge53.in = phi i16 [ %18, %if.end11 ], [ %11, %if.end ]
  %storemerge53 = sext i16 %storemerge53.in to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge53, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %21, label %sw.bb16.cleanup_crit_edge [
    i32 0, label %sw.bb16.if.end26_crit_edge
    i32 9, label %if.then23
  ]

sw.bb16.if.end26_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %sw.bb16.if.end26_crit_edge
  %storemerge52 = phi i32 [ 31, %if.then23 ], [ %21, %sw.bb16.if.end26_crit_edge ]
  %storemerge = phi i32 [ 250000, %if.then23 ], [ 156250, %sw.bb16.if.end26_crit_edge ]
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge52, ptr %val, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %val2, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %config = getelementptr inbounds %struct.tmp006_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %config, align 4
  %27 = lshr i16 %26, 9
  %28 = and i16 %27, 7
  %shr28 = zext i16 %28 to i32
  %arrayidx = getelementptr [5 x [2 x i32]], ptr @tmp006_freqs, i32 0, i32 %shr28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val, align 4
  %arrayidx31 = getelementptr [5 x [2 x i32]], ptr @tmp006_freqs, i32 0, i32 %shr28, i32 1
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx31, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %if.end26, %sw.bb16.cleanup_crit_edge, %if.end15, %if.end6.i70.cleanup_crit_edge, %if.end3.i64.cleanup_crit_edge, %while.body.i59.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb27 ], [ 2, %if.end26 ], [ 1, %if.end15 ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i14.i, %if.end6.i.cleanup_crit_edge ], [ %call.i14.i65, %if.end6.i70.cleanup_crit_edge ], [ %call.i.i, %while.body.i.cleanup_crit_edge ], [ -5, %if.end3.i.cleanup_crit_edge ], [ %call.i.i57, %while.body.i59.cleanup_crit_edge ], [ -5, %if.end3.i64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp006_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 12
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %val, label %for.body.preheader.cleanup_crit_edge [
    i32 4, label %land.lhs.true
    i32 2, label %land.lhs.true.1
    i32 1, label %land.lhs.true.2
    i32 0, label %land.lhs.true.3
  ]

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6 = icmp eq i32 %val2, 0
  br i1 %cmp6, label %land.lhs.true.if.then7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7.fold.split:                              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.3.if.then7_crit_edge, %land.lhs.true.2.if.then7_crit_edge, %land.lhs.true.1.if.then7_crit_edge, %if.then7.fold.split, %land.lhs.true.if.then7_crit_edge
  %i.024.lcssa = phi i16 [ 0, %land.lhs.true.if.then7_crit_edge ], [ 512, %land.lhs.true.1.if.then7_crit_edge ], [ 1024, %land.lhs.true.2.if.then7_crit_edge ], [ 1536, %land.lhs.true.3.if.then7_crit_edge ], [ 2048, %if.then7.fold.split ]
  %config = getelementptr inbounds %struct.tmp006_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %config, align 4
  %5 = and i16 %4, -3585
  %conv11 = or i16 %5, %i.024.lcssa
  store i16 %conv11, ptr %config, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv11) #5
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext 2, i16 noundef zeroext %8) #5
  br label %cleanup

land.lhs.true.1:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.1 = icmp eq i32 %val2, 0
  br i1 %cmp6.1, label %land.lhs.true.1.if.then7_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.1.if.then7_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

land.lhs.true.2:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.2 = icmp eq i32 %val2, 0
  br i1 %cmp6.2, label %land.lhs.true.2.if.then7_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.2.if.then7_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

land.lhs.true.3:                                  ; preds = %for.body.preheader
  %9 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %val2, label %land.lhs.true.3.cleanup_crit_edge [
    i32 500000, label %land.lhs.true.3.if.then7_crit_edge
    i32 250000, label %if.then7.fold.split
  ]

land.lhs.true.3.if.then7_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %if.then7, %land.lhs.true.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.2.cleanup_crit_edge ], [ -22, %land.lhs.true.1.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %land.lhs.true.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp006_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %config.i = getelementptr inbounds %struct.tmp006_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %config.i, align 4
  %6 = and i16 %5, -28673
  store i16 %6, ptr %config.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %8, i8 noundef zeroext 2, i16 noundef zeroext %9) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp006_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %config.i = getelementptr inbounds %struct.tmp006_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %config.i, align 4
  %.sink.i = or i16 %5, 28672
  store i16 %.sink.i, ptr %config.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %.sink.i) #5
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext 2, i16 noundef zeroext %8) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_tmp006__288_292_tmp006_driver_init6, !1, !"__initcall__kmod_tmp006__288_292_tmp006_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/tmp006.c", i32 292, i32 1}
!2 = !{ptr @__exitcall_tmp006_driver_exit, !1, !"__exitcall_tmp006_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/tmp006.c", i32 294, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/tmp006.c", i32 295, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/tmp006.c", i32 296, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/temperature/tmp006.c", i32 286, i32 11}
!12 = !{ptr @tmp006_driver, !13, !"tmp006_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/tmp006.c", i32 284, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/tmp006.c", i32 226, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tmp006_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tmp006_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tmp006_info, !23, !"tmp006_info", i1 false, i1 false}
!23 = !{!"../drivers/iio/temperature/tmp006.c", i32 175, i32 30}
!24 = !{ptr @tmp006_attribute_group, !25, !"tmp006_attribute_group", i1 false, i1 false}
!25 = !{!"../drivers/iio/temperature/tmp006.c", i32 156, i32 37}
!26 = !{ptr @tmp006_attributes, !27, !"tmp006_attributes", i1 false, i1 false}
!27 = !{!"../drivers/iio/temperature/tmp006.c", i32 151, i32 26}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/temperature/tmp006.c", i32 149, i32 8}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @iio_const_attr_sampling_frequency_available, !29, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!32 = !{ptr @tmp006_freqs, !33, !"tmp006_freqs", i1 false, i1 false}
!33 = !{!"../drivers/iio/temperature/tmp006.c", i32 70, i32 18}
!34 = !{ptr @tmp006_channels, !35, !"tmp006_channels", i1 false, i1 false}
!35 = !{!"../drivers/iio/temperature/tmp006.c", i32 160, i32 35}
!36 = !{ptr @tmp006_pm_ops, !37, !"tmp006_pm_ops", i1 false, i1 false}
!37 = !{!"../drivers/iio/temperature/tmp006.c", i32 276, i32 8}
!38 = !{ptr @tmp006_id, !39, !"tmp006_id", i1 false, i1 false}
!39 = !{!"../drivers/iio/temperature/tmp006.c", i32 278, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
