; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/tmp007.c_pt.bc'
source_filename = "../drivers/iio/temperature/tmp007.c"
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tmp007_data = type { ptr, %struct.mutex, i16, i16 }

@__initcall__kmod_tmp007__288_582_tmp007_driver_init6 = internal global ptr @tmp007_driver_init, section ".initcall6.init", align 4
@tmp007_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tmp007_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tmp007_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmp007_pm_ops, ptr null, ptr null }, ptr @tmp007_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tmp007_driver_exit = internal global ptr @tmp007_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"tmp007.author=Manivannan Sadhasivam <manivannanece23@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"tmp007.description=TI TMP007 IR thermopile sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"tmp007.file=drivers/iio/temperature/tmp007\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"tmp007.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp007\00", [25 x i8] zeroinitializer }, align 32
@tmp007_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp007\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tmp007_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tmp007_suspend, ptr @tmp007_resume, ptr @tmp007_suspend, ptr @tmp007_resume, ptr @tmp007_suspend, ptr @tmp007_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tmp007_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tmp007\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tmp007_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TMP007 not found\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tmp007_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/temperature/tmp007.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmp007_probe._entry_ptr = internal global ptr @tmp007_probe._entry, section ".printk_index", align 4
@tmp007_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@tmp007_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @tmp007_attribute_group, ptr @tmp007_read_raw, ptr null, ptr null, ptr @tmp007_write_raw, ptr null, ptr null, ptr @tmp007_read_event_config, ptr @tmp007_write_event_config, ptr @tmp007_read_thresh, ptr @tmp007_write_thresh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tmp007_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 21, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @tmp007_die_event, i32 2, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 22, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @tmp007_obj_event, i32 2, ptr null, ptr null, ptr null, i8 -128 }], [48 x i8] zeroinitializer }, align 32
@tmp007_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq request error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tmp007_probe._entry_ptr.9 = internal global ptr @tmp007_probe._entry.7, section ".printk_index", align 4
@tmp007_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tmp007_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@tmp007_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.10, %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"4 2 1 0.5 0.25\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@tmp007_avgs = internal constant { [5 x [2 x i32]], [56 x i8] } { [5 x [2 x i32]] [[2 x i32] [i32 4, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 0, i32 250000]], [56 x i8] zeroinitializer }, align 32
@tmp007_die_event = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@tmp007_obj_event = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 250000, i64 500000]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"tmp007_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 573, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 575, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"tmp007_of_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 561, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"tmp007_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 559, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"tmp007_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 567, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 460, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 471, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"tmp007_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 417, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"tmp007_channels\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 394, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 532, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"tmp007_attribute_group\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 360, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"tmp007_attributes\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 355, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 353, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"tmp007_avgs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 70, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"tmp007_die_event\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 379, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"tmp007_obj_event\00", align 1
@___asan_gen_.92 = private constant [36 x i8] c"../drivers/iio/temperature/tmp007.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 364, i32 36 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tmp007_driver_exit, ptr @__initcall__kmod_tmp007__288_582_tmp007_driver_init6, ptr @tmp007_driver_exit, ptr @tmp007_probe._entry, ptr @tmp007_probe._entry.7, ptr @tmp007_probe._entry_ptr, ptr @tmp007_probe._entry_ptr.9, ptr @tmp007_driver, ptr @.str, ptr @tmp007_of_match, ptr @tmp007_pm_ops, ptr @tmp007_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tmp007_probe.__key, ptr @.str.6, ptr @tmp007_info, ptr @tmp007_channels, ptr @.str.8, ptr @tmp007_attribute_group, ptr @tmp007_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.10, ptr @.str.11, ptr @tmp007_avgs, ptr @tmp007_die_event, ptr @tmp007_obj_event], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_avgs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_die_event to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp007_obj_event to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tmp007_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmp007_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tmp007_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_probe(ptr noundef %client, ptr noundef %tmp007_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i115 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %cmp.i.i = icmp slt i32 %call.i.i115, 0
  %conv.i.i = trunc i32 %call.i.i115 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %conv1.i.i = zext i16 %6 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i115, i32 %conv1.i.i
  br i1 %cmp.i.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call.i11.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp.i12.i, label %if.end.i.do.end_crit_edge, label %tmp007_identify.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

tmp007_identify.exit:                             ; preds = %if.end.i
  %conv.i13.i = trunc i32 %call.i11.i to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 21577, i32 %cond.i.i)
  %cmp5.i = icmp eq i32 %cond.i.i, 21577
  call void @__sanitizer_cov_trace_const_cmp2(i16 30720, i16 %conv.i13.i)
  %cmp6.i = icmp eq i16 %conv.i13.i, 30720
  %spec.select.i = select i1 %cmp5.i, i1 %cmp6.i, i1 false
  br i1 %spec.select.i, label %if.end3, label %tmp007_identify.exit.do.end_crit_edge

tmp007_identify.exit.do.end_crit_edge:            ; preds = %tmp007_identify.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %tmp007_identify.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end3:                                          ; preds = %tmp007_identify.exit
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call5 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev4, i32 noundef 100) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %8, align 4
  %lock = getelementptr inbounds %struct.tmp007_data, ptr %8, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tmp007_probe.__key) #6
  %name = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 15
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str, ptr %name, align 8
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %call5, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 17
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tmp007_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 13
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tmp007_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call5, i32 0, i32 14
  %15 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %num_channels, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %8, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %17, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i116 = icmp slt i32 %call.i, 0
  br i1 %cmp.i116, label %if.end8.cleanup_crit_edge, label %if.end17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %conv.i117 = trunc i32 %call.i to i16
  %config = getelementptr inbounds %struct.tmp007_data, ptr %8, i32 0, i32 2
  %18 = or i16 %conv.i117, 16401
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %config, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %8, align 4
  %call.i118 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %22, i8 noundef zeroext 2, i16 noundef zeroext %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp24 = icmp slt i32 %call.i118, 0
  br i1 %cmp24, label %if.end17.cleanup_crit_edge, label %if.end27

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %call.i119 = tail call i32 @devm_add_action(ptr noundef %dev4, ptr noundef nonnull @tmp007_powerdown_action_cb, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %8, align 4
  br i1 %tobool.not.i, label %if.end32, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %config, align 4
  %27 = and i16 %26, -4097
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #6
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %24, i8 noundef zeroext 2, i16 noundef zeroext %28) #6
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %call.i121 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %24, i8 noundef zeroext 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp.i122 = icmp slt i32 %call.i121, 0
  br i1 %cmp.i122, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %conv.i123 = trunc i32 %call.i121 to i16
  %status_mask = getelementptr inbounds %struct.tmp007_data, ptr %8, i32 0, i32 3
  %29 = or i16 %conv.i123, 60
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %status_mask to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %status_mask, align 2
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %8, align 4
  %call.i126 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %33, i8 noundef zeroext 5, i16 noundef zeroext %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %cmp47 = icmp slt i32 %call.i126, 0
  br i1 %cmp47, label %if.end38.cleanup_crit_edge, label %if.end50

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool51.not = icmp eq i32 %35, 0
  br i1 %tobool51.not, label %if.end50.if.end64_crit_edge, label %if.then52

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then52:                                        ; preds = %if.end50
  %call56 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev4, i32 noundef %35, ptr noundef null, ptr noundef nonnull @tmp007_interrupt_handler, i32 noundef 8194, ptr noundef %tmp007_id, ptr noundef nonnull %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then52.if.end64_crit_edge, label %do.end61

if.then52.if.end64_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end61:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 0, %call56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.8, i32 noundef %sub) #9
  br label %cleanup

if.end64:                                         ; preds = %if.then52.if.end64_crit_edge, %if.end50.if.end64_crit_edge
  %call66 = tail call i32 @__devm_iio_device_register(ptr noundef %dev4, ptr noundef nonnull %call5, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end61, %if.end38.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call56, %do.end61 ], [ %call66, %if.end64 ], [ -19, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ], [ %call.i118, %if.end17.cleanup_crit_edge ], [ %call.i119, %devm_add_action_or_reset.exit ], [ %call.i121, %if.end32.cleanup_crit_edge ], [ %call.i126, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmp007_powerdown_action_cb(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %config.i = getelementptr inbounds %struct.tmp007_data, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %config.i, align 4
  %4 = and i16 %3, -4097
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_interrupt_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %conv.i = trunc i32 %call.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %conv1.i = zext i16 %4 to i32
  %cond.i = select i1 %cmp.i, i32 %call.i, i32 %conv1.i
  %and = and i32 %cond.i, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp.i, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %cond.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call6 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 305702887227392, i64 noundef %call5) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %and8 = and i32 %cond.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call12 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 587177863938048, i64 noundef %call11) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %and14 = and i32 %cond.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call18 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 304603375599616, i64 noundef %call17) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %and20 = and i32 %cond.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call24 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 586078352310272, i64 noundef %call23) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then22 ], [ 1, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
    i32 12, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 2
  %3 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 21, label %sw.bb1
    i32 22, label %sw.bb.while.body.i_crit_edge
  ]

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %conv.i = trunc i32 %call.i to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  br i1 %cmp.i, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %dec10.i = phi i32 [ %dec.i, %if.end5.i.while.body.i_crit_edge ], [ 49, %sw.bb.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %10, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %11 = and i32 %call.i.i, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %if.end8.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 100) #6
  %dec.i = add nsw i32 %dec10.i, -1
  %cmp.not.i = icmp eq i32 %dec10.i, 0
  br i1 %cmp.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %14, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp.i2.i = icmp slt i32 %call.i1.i, 0
  %conv.i3.i = trunc i32 %call.i1.i to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv.i3.i) #6
  br i1 %cmp.i2.i, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.sw.epilog_crit_edge

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end8.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge
  %ret.0.in = phi i16 [ %8, %sw.bb1.sw.epilog_crit_edge ], [ %15, %if.end8.i.sw.epilog_crit_edge ]
  %16 = ashr i16 %ret.0.in, 2
  %shr = sext i16 %16 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 31, ptr %val, align 4
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 250000, ptr %val2, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %config = getelementptr inbounds %struct.tmp007_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %config, align 4
  %22 = lshr i16 %21, 9
  %23 = and i16 %22, 7
  %shr11 = zext i16 %23 to i32
  %arrayidx = getelementptr [5 x [2 x i32]], ptr @tmp007_avgs, i32 0, i32 %shr11
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  %arrayidx14 = getelementptr [5 x [2 x i32]], ptr @tmp007_avgs, i32 0, i32 %shr11, i32 1
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx14, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb9, %sw.epilog, %if.end8.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb10 ], [ 2, %sw.bb9 ], [ 1, %sw.epilog ], [ %call.i, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i1.i, %if.end8.i.cleanup_crit_edge ], [ %call.i.i, %while.body.i.cleanup_crit_edge ], [ -5, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %channel, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cmp = icmp eq i32 %mask, 12
  br i1 %cmp, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %val, label %for.body.preheader.cleanup_crit_edge [
    i32 4, label %land.lhs.true
    i32 2, label %land.lhs.true.1
    i32 1, label %land.lhs.true.2
    i32 0, label %land.lhs.true.3
  ]

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6 = icmp eq i32 %val2, 0
  br i1 %cmp6, label %land.lhs.true.if.then7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7.fold.split:                              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.3.if.then7_crit_edge, %land.lhs.true.2.if.then7_crit_edge, %land.lhs.true.1.if.then7_crit_edge, %if.then7.fold.split, %land.lhs.true.if.then7_crit_edge
  %i.024.lcssa = phi i16 [ 0, %land.lhs.true.if.then7_crit_edge ], [ 512, %land.lhs.true.1.if.then7_crit_edge ], [ 1024, %land.lhs.true.2.if.then7_crit_edge ], [ 1536, %land.lhs.true.3.if.then7_crit_edge ], [ 2048, %if.then7.fold.split ]
  %config = getelementptr inbounds %struct.tmp007_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %config, align 4
  %5 = and i16 %4, -3585
  %conv10 = or i16 %5, %i.024.lcssa
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  store i16 %conv10, ptr %config, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv10) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext 2, i16 noundef zeroext %8) #6
  br label %cleanup

land.lhs.true.1:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.1 = icmp eq i32 %val2, 0
  br i1 %cmp6.1, label %land.lhs.true.1.if.then7_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.1.if.then7_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

land.lhs.true.2:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp6.2 = icmp eq i32 %val2, 0
  br i1 %cmp6.2, label %land.lhs.true.2.if.then7_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.2.if.then7_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

land.lhs.true.3:                                  ; preds = %for.body.preheader
  %9 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %val2, label %land.lhs.true.3.cleanup_crit_edge [
    i32 500000, label %land.lhs.true.3.if.then7_crit_edge
    i32 250000, label %if.then7.fold.split
  ]

land.lhs.true.3.if.then7_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %if.then7, %land.lhs.true.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.2.cleanup_crit_edge ], [ -22, %land.lhs.true.1.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %land.lhs.true.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tmp007_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 22, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i32 2048, i32 1024
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2 = icmp eq i32 %dir, 1
  %.9 = select i1 %cmp2, i32 8192, i32 4096
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %mask.0 = phi i32 [ %., %sw.bb ], [ %.9, %sw.bb1 ]
  %status_mask = getelementptr inbounds %struct.tmp007_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %status_mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status_mask, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %mask.0, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 22, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i32 2048, i32 1024
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2 = icmp eq i32 %dir, 1
  %.29 = select i1 %cmp2, i32 8192, i32 4096
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %status_mask.0 = phi i32 [ %., %sw.bb ], [ %.29, %sw.bb1 ]
  %lock = getelementptr inbounds %struct.tmp007_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %call.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %conv1.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %or = or i32 %status_mask.0, %conv1.i
  %neg = xor i32 %status_mask.0, -1
  %and = and i32 %conv1.i, %neg
  %ret.0 = select i1 %tobool.not, i32 %and, i32 %or
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv = trunc i32 %ret.0 to i16
  %status_mask15 = getelementptr inbounds %struct.tmp007_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %status_mask15 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %status_mask15, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  %call.i30 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 5, i16 noundef zeroext %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i30, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_read_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 22, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i8 8, i8 9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2 = icmp eq i32 %dir, 1
  %.16 = select i1 %cmp2, i8 6, i8 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %reg.0 = phi i8 [ %., %sw.bb ], [ %.16, %sw.bb1 ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext %reg.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %call.i to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %8 = ashr i16 %7, 7
  %shr = sext i16 %8 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_write_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 22, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i8 8, i8 9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2 = icmp eq i32 %dir, 1
  %.15 = select i1 %cmp2, i8 6, i8 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %reg.0 = phi i8 [ %., %sw.bb ], [ %.15, %sw.bb1 ]
  %5 = add i32 %val, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %5)
  %6 = icmp ult i32 %5, -512
  br i1 %6, label %sw.epilog.cleanup_crit_edge, label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %val.tr = trunc i32 %val to i16
  %conv = shl nsw i16 %val.tr, 7
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %8, i8 noundef zeroext %reg.0, i16 noundef zeroext %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %config.i = getelementptr inbounds %struct.tmp007_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %config.i, align 4
  %8 = and i16 %7, -4097
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext 2, i16 noundef zeroext %9) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp007_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %config = getelementptr inbounds %struct.tmp007_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %config, align 4
  %8 = or i16 %7, 4096
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext 2, i16 noundef zeroext %9) #6
  ret i32 %call.i
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_tmp007__288_582_tmp007_driver_init6, !1, !"__initcall__kmod_tmp007__288_582_tmp007_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/tmp007.c", i32 582, i32 1}
!2 = !{ptr @__exitcall_tmp007_driver_exit, !1, !"__exitcall_tmp007_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/tmp007.c", i32 584, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/tmp007.c", i32 585, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/tmp007.c", i32 586, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/temperature/tmp007.c", i32 575, i32 11}
!12 = !{ptr @tmp007_driver, !13, !"tmp007_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/tmp007.c", i32 573, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/tmp007.c", i32 460, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tmp007_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tmp007_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tmp007_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/temperature/tmp007.c", i32 471, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/temperature/tmp007.c", i32 532, i32 4}
!27 = !{ptr @tmp007_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tmp007_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tmp007_info, !30, !"tmp007_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/temperature/tmp007.c", i32 417, i32 30}
!31 = !{ptr @tmp007_attribute_group, !32, !"tmp007_attribute_group", i1 false, i1 false}
!32 = !{!"../drivers/iio/temperature/tmp007.c", i32 360, i32 37}
!33 = !{ptr @tmp007_attributes, !34, !"tmp007_attributes", i1 false, i1 false}
!34 = !{!"../drivers/iio/temperature/tmp007.c", i32 355, i32 26}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/temperature/tmp007.c", i32 353, i32 8}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iio_const_attr_sampling_frequency_available, !36, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!39 = !{ptr @tmp007_avgs, !40, !"tmp007_avgs", i1 false, i1 false}
!40 = !{!"../drivers/iio/temperature/tmp007.c", i32 70, i32 18}
!41 = !{ptr @tmp007_channels, !42, !"tmp007_channels", i1 false, i1 false}
!42 = !{!"../drivers/iio/temperature/tmp007.c", i32 394, i32 35}
!43 = !{ptr @tmp007_die_event, !44, !"tmp007_die_event", i1 false, i1 false}
!44 = !{!"../drivers/iio/temperature/tmp007.c", i32 379, i32 36}
!45 = !{ptr @tmp007_obj_event, !46, !"tmp007_obj_event", i1 false, i1 false}
!46 = !{!"../drivers/iio/temperature/tmp007.c", i32 364, i32 36}
!47 = !{ptr @tmp007_of_match, !48, !"tmp007_of_match", i1 false, i1 false}
!48 = !{!"../drivers/iio/temperature/tmp007.c", i32 561, i32 34}
!49 = !{ptr @tmp007_pm_ops, !50, !"tmp007_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/iio/temperature/tmp007.c", i32 559, i32 8}
!51 = !{ptr @tmp007_id, !52, !"tmp007_id", i1 false, i1 false}
!52 = !{!"../drivers/iio/temperature/tmp007.c", i32 567, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
