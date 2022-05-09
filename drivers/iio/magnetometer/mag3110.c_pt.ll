; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/mag3110.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/mag3110.c"
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.87, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.87 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.mag3110_data = type { ptr, %struct.mutex, i8, i32, ptr, ptr, %struct.anon.86 }
%struct.anon.86 = type { [3 x i16], i8, i64 }

@__initcall__kmod_mag3110__288_654_mag3110_driver_init6 = internal global ptr @mag3110_driver_init, section ".initcall6.init", align 4
@mag3110_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mag3110_probe, ptr @mag3110_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mag3110_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mag3110_pm_ops, ptr null, ptr null }, ptr @mag3110_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mag3110_driver_exit = internal global ptr @mag3110_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"mag3110.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [58 x i8] c"mag3110.description=Freescale MAG3110 magnetometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"mag3110.file=drivers/iio/magnetometer/mag3110\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"mag3110.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mag3110\00", [24 x i8] zeroinitializer }, align 32
@mag3110_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mag3110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mag3110_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mag3110_suspend, ptr @mag3110_resume, ptr @mag3110_suspend, ptr @mag3110_resume, ptr @mag3110_suspend, ptr @mag3110_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mag3110_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mag3110\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get VDD regulator!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get VDDIO regulator!\0A\00", [32 x i8] zeroinitializer }, align 32
@mag3110_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 497, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable VDD regulator!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mag3110_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/magnetometer/mag3110.c\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mag3110_probe._entry_ptr = internal global ptr @mag3110_probe._entry, section ".printk_index", align 4
@mag3110_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 503, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable VDDIO regulator!\0A\00", [61 x i8] zeroinitializer }, align 32
@mag3110_probe._entry_ptr.12 = internal global ptr @mag3110_probe._entry.10, section ".printk_index", align 4
@mag3110_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@mag3110_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mag3110_group, ptr @mag3110_read_raw, ptr null, ptr null, ptr @mag3110_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mag3110_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.87 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 1, %struct.anon.87 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 2, %struct.anon.87 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 3, %struct.anon.87 { i8 115, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.87 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@mag3110_scan_masks = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 7, i32 15, i32 0], [20 x i8] zeroinitializer }, align 32
@mag3110_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mag3110_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mag3110_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mag3110_show_samp_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@mag3110_samp_freq = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 80, i32 0], [2 x i32] [i32 40, i32 0], [2 x i32] [i32 20, i32 0], [2 x i32] [i32 10, i32 0], [2 x i32] [i32 5, i32 0], [2 x i32] [i32 2, i32 500000], [2 x i32] [i32 1, i32 250000], [2 x i32] [i32 0, i32 625000]], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06d \00", [23 x i8] zeroinitializer }, align 32
@mag3110_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 94, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data not ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mag3110_request\00", [16 x i8] zeroinitializer }, align 32
@mag3110_request._entry_ptr = internal global ptr @mag3110_request._entry, section ".printk_index", align 4
@mag3110_wait_standby._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 193, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mag3110_wait_standby\00", [43 x i8] zeroinitializer }, align 32
@mag3110_wait_standby._entry_ptr = internal global ptr @mag3110_wait_standby._entry, section ".printk_index", align 4
@mag3110_wait_standby._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.7, i32 204, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device not entering standby mode\0A\00", [62 x i8] zeroinitializer }, align 32
@mag3110_wait_standby._entry_ptr.22 = internal global ptr @mag3110_wait_standby._entry.20, section ".printk_index", align 4
@mag3110_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 590, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to disable VDDIO regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mag3110_suspend\00", [16 x i8] zeroinitializer }, align 32
@mag3110_suspend._entry_ptr = internal global ptr @mag3110_suspend._entry, section ".printk_index", align 4
@mag3110_suspend._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 596, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable VDD regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@mag3110_suspend._entry_ptr.27 = internal global ptr @mag3110_suspend._entry.25, section ".printk_index", align 4
@mag3110_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 611, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable VDD regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mag3110_resume\00", [17 x i8] zeroinitializer }, align 32
@mag3110_resume._entry_ptr = internal global ptr @mag3110_resume._entry, section ".printk_index", align 4
@mag3110_resume._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.7, i32 617, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable VDDIO regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@mag3110_resume._entry_ptr.32 = internal global ptr @mag3110_resume._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 12]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 9]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 12]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 5, i64 10, i64 20, i64 40, i64 80]
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"mag3110_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 644, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 646, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"mag3110_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 638, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"mag3110_pm_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 626, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"mag3110_id\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 632, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 485, i32 51 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 488, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 490, i32 53 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 493, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 497, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 503, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 516, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"mag3110_info\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 464, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"mag3110_channels\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 437, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"mag3110_scan_masks\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 470, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"mag3110_group\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 460, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"mag3110_attributes\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 455, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 154, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"mag3110_samp_freq\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 143, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 125, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 94, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 193, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 204, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 590, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 596, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 611, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [38 x i8] c"../drivers/iio/magnetometer/mag3110.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 617, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mag3110_driver_exit, ptr @__initcall__kmod_mag3110__288_654_mag3110_driver_init6, ptr @mag3110_driver_exit, ptr @mag3110_probe._entry, ptr @mag3110_probe._entry.10, ptr @mag3110_probe._entry_ptr, ptr @mag3110_probe._entry_ptr.12, ptr @mag3110_request._entry, ptr @mag3110_request._entry_ptr, ptr @mag3110_resume._entry, ptr @mag3110_resume._entry.30, ptr @mag3110_resume._entry_ptr, ptr @mag3110_resume._entry_ptr.32, ptr @mag3110_suspend._entry, ptr @mag3110_suspend._entry.25, ptr @mag3110_suspend._entry_ptr, ptr @mag3110_suspend._entry_ptr.27, ptr @mag3110_wait_standby._entry, ptr @mag3110_wait_standby._entry.20, ptr @mag3110_wait_standby._entry_ptr, ptr @mag3110_wait_standby._entry_ptr.22, ptr @mag3110_driver, ptr @.str, ptr @mag3110_of_match, ptr @mag3110_pm_ops, ptr @mag3110_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @mag3110_probe.__key, ptr @.str.13, ptr @mag3110_info, ptr @mag3110_channels, ptr @mag3110_scan_masks, ptr @mag3110_group, ptr @mag3110_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @.str.14, ptr @mag3110_samp_freq, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_scan_masks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_samp_freq to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_wait_standby._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_wait_standby._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_suspend._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mag3110_resume._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mag3110_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mag3110_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @mag3110_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 128) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %vdd_reg = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %vdd_reg, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %vddio_reg = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %vddio_reg, align 4
  %cmp.i133 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call13 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %6 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd_reg, align 8
  %call23 = tail call i32 @regulator_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %do.end

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %8 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vddio_reg, align 4
  %call29 = tail call i32 @regulator_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %disable_regulator_vdd

if.end36:                                         ; preds = %if.end27
  %call37 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %if.end36.disable_regulators_crit_edge, label %if.end39

if.end36.disable_regulators_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulators

if.end39:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %call37)
  %cmp40.not = icmp eq i32 %call37, 196
  br i1 %cmp40.not, label %if.end54, label %if.end39.disable_regulators_crit_edge

if.end39.disable_regulators_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulators

if.end54:                                         ; preds = %if.end39
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %1, align 8
  %lock = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mag3110_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %12 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mag3110_info, ptr %info, align 8
  %name47 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %name47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %id, ptr %name47, align 8
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mag3110_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mag3110_scan_masks, ptr %available_scan_masks, align 4
  %ctrl_reg1 = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 2
  %sleep_val = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %sleep_val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %sleep_val, align 4
  %19 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ctrl_reg1, align 8
  %call56 = tail call fastcc i32 @mag3110_change_config(ptr noundef %1, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.disable_regulators_crit_edge, label %if.end60

if.end54.disable_regulators_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulators

if.end60:                                         ; preds = %if.end54
  %call61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 17, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end60.standby_on_error_crit_edge, label %if.end65

if.end60.standby_on_error_crit_edge:              ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %standby_on_error

if.end65:                                         ; preds = %if.end60
  %call66 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @mag3110_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.standby_on_error_crit_edge, label %if.end70

if.end65.standby_on_error_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %standby_on_error

if.end70:                                         ; preds = %if.end65
  %call71 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %buffer_cleanup, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

buffer_cleanup:                                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #6
  br label %standby_on_error

standby_on_error:                                 ; preds = %buffer_cleanup, %if.end65.standby_on_error_crit_edge, %if.end60.standby_on_error_crit_edge
  %ret.0 = phi i32 [ %call61, %if.end60.standby_on_error_crit_edge ], [ %call66, %if.end65.standby_on_error_crit_edge ], [ %call71, %buffer_cleanup ]
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ctrl_reg1.i136 = getelementptr inbounds %struct.mag3110_data, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %ctrl_reg1.i136 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrl_reg1.i136, align 8
  %26 = and i8 %25, -2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 16, i8 noundef zeroext %26) #6
  br label %disable_regulators

disable_regulators:                               ; preds = %standby_on_error, %if.end54.disable_regulators_crit_edge, %if.end39.disable_regulators_crit_edge, %if.end36.disable_regulators_crit_edge
  %ret.1 = phi i32 [ %call37, %if.end36.disable_regulators_crit_edge ], [ %call56, %if.end54.disable_regulators_crit_edge ], [ %ret.0, %standby_on_error ], [ -19, %if.end39.disable_regulators_crit_edge ]
  %27 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vddio_reg, align 4
  %call79 = tail call i32 @regulator_disable(ptr noundef %28) #6
  br label %disable_regulator_vdd

disable_regulator_vdd:                            ; preds = %disable_regulators, %do.end34
  %ret.2 = phi i32 [ %call29, %do.end34 ], [ %ret.1, %disable_regulators ]
  %29 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdd_reg, align 8
  %call81 = tail call i32 @regulator_disable(ptr noundef %30) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_regulator_vdd, %if.end70.cleanup_crit_edge, %do.end, %if.then16, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then6 ], [ %call20, %if.then16 ], [ %call23, %do.end ], [ %ret.2, %disable_regulator_vdd ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #6
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #6
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ctrl_reg1.i = getelementptr inbounds %struct.mag3110_data, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_reg1.i, align 8
  %10 = and i8 %9, -2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 16, i8 noundef zeroext %10) #6
  %vddio_reg = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vddio_reg, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %12) #6
  %vdd_reg = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdd_reg, align 8
  %call5 = tail call i32 @regulator_disable(ptr noundef %14) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mag3110_change_config(ptr noundef %data, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mag3110_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end:                                           ; preds = %entry
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.not = icmp eq i32 %and.i, 0
  br i1 %cmp1.not, label %if.end.while.body.i.preheader_crit_edge, label %if.then2

if.end.while.body.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.preheader

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %ctrl_reg1.i = getelementptr inbounds %struct.mag3110_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_reg1.i, align 8
  %6 = and i8 %5, -2
  %call.i1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp4 = icmp slt i32 %call.i1, 0
  br i1 %cmp4, label %if.then2.fail_crit_edge, label %if.then2.while.body.i.preheader_crit_edge

if.then2.while.body.i.preheader_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.preheader

if.then2.fail_crit_edge:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

while.body.i.preheader:                           ; preds = %if.then2.while.body.i.preheader_crit_edge, %if.end.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec25.i = phi i32 [ %dec.i, %if.end5.i.while.body.i_crit_edge ], [ 29, %while.body.i.preheader ]
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %call.i2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp1.i = icmp slt i32 %call.i2, 0
  br i1 %cmp1.i, label %while.body.i.mag3110_wait_standby.exit.thread_crit_edge, label %if.end.i

while.body.i.mag3110_wait_standby.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mag3110_wait_standby.exit.thread

if.end.i:                                         ; preds = %while.body.i
  %and.i3 = and i32 %call.i2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %cmp3.i = icmp eq i32 %and.i3, 0
  br i1 %cmp3.i, label %if.end11, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @msleep_interruptible(i32 noundef 500) #6
  %dec.i = add nsw i32 %dec25.i, -1
  %cmp.not.i = icmp eq i32 %dec25.i, 0
  br i1 %cmp.not.i, label %if.end5.i.mag3110_wait_standby.exit.thread_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end5.i.mag3110_wait_standby.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mag3110_wait_standby.exit.thread

mag3110_wait_standby.exit.thread:                 ; preds = %if.end5.i.mag3110_wait_standby.exit.thread_crit_edge, %while.body.i.mag3110_wait_standby.exit.thread_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.18, %while.body.i.mag3110_wait_standby.exit.thread_crit_edge ], [ @.str.21, %if.end5.i.mag3110_wait_standby.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i2, %while.body.i.mag3110_wait_standby.exit.thread_crit_edge ], [ -5, %if.end5.i.mag3110_wait_standby.exit.thread_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull %.str.21.sink.i) #9
  br label %fail

if.end11:                                         ; preds = %if.end.i
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 16, i8 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.fail_crit_edge, label %if.end15

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end15:                                         ; preds = %if.end11
  br i1 %cmp1.not, label %if.end15.if.end22_crit_edge, label %if.then17

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %ctrl_reg1.i5 = getelementptr inbounds %struct.mag3110_data, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %ctrl_reg1.i5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctrl_reg1.i5, align 8
  %call.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 16, i8 noundef zeroext %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp19 = icmp slt i32 %call.i6, 0
  br i1 %cmp19, label %if.then17.fail_crit_edge, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17.fail_crit_edge:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  br label %fail

fail:                                             ; preds = %if.end22, %if.then17.fail_crit_edge, %if.end11.fail_crit_edge, %mag3110_wait_standby.exit.thread, %if.then2.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ %call.i1, %if.then2.fail_crit_edge ], [ %call12, %if.end11.fail_crit_edge ], [ %call.i6, %if.then17.fail_crit_edge ], [ 0, %if.end22 ], [ %call.i, %entry.fail_crit_edge ], [ %retval.0.ph.i, %mag3110_wait_standby.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %scan = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %call.i = tail call fastcc i32 @mag3110_request(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mag3110_read.exit.thread, label %mag3110_read.exit

mag3110_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %done

mag3110_read.exit:                                ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call2.i = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 6, ptr noundef %scan) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %mag3110_read.exit.done_crit_edge, label %if.end

mag3110_read.exit.done_crit_edge:                 ; preds = %mag3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %mag3110_read.exit
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_scan_mask, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then4.done_crit_edge, label %if.end8

if.then4.done_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %call5 to i8
  %temperature = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %temperature to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %temperature, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge
  %call12 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scan_timestamp.i, align 8, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end10.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end10.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %17, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call12, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end10.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i24 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #6
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then4.done_crit_edge, %mag3110_read.exit.done_crit_edge, %mag3110_read.exit.thread
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %20) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buffer = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buffer) #6
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buffer, align 2, !annotation !102
  %3 = getelementptr inbounds [3 x i16], ptr %buffer, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !102
  %5 = getelementptr inbounds [3 x i16], ptr %buffer, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !102
  %7 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb26
    i32 12, label %sw.bb31
    i32 5, label %sw.bb37
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %9, label %if.end.release_crit_edge [
    i32 5, label %sw.bb2
    i32 9, label %sw.bb8
  ]

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

sw.bb2:                                           ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %call.i = tail call fastcc i32 @mag3110_request(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mag3110_read.exit.thread, label %mag3110_read.exit

mag3110_read.exit.thread:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %release

mag3110_read.exit:                                ; preds = %sw.bb2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call2.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 6, ptr noundef nonnull %buffer) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %mag3110_read.exit.release_crit_edge, label %if.end5

mag3110_read.exit.release_crit_edge:              ; preds = %mag3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end5:                                          ; preds = %mag3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %13 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr [3 x i16], ptr %buffer, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %16 to i32
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %realbits, align 1
  %19 = sub i8 32, %18
  %conv1.i = zext i8 %19 to i32
  %shl.i = shl i32 %conv, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %val, align 4
  br label %release

sw.bb8:                                           ; preds = %if.end
  %lock = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call9 = tail call fastcc i32 @mag3110_request(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %release

if.end14:                                         ; preds = %sw.bb8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext 15) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.end14.release_crit_edge, label %if.end20

if.end14.release_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %release

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %realbits22 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %realbits22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %realbits22, align 1
  %25 = sub i8 32, %24
  %conv1.i83 = zext i8 %25 to i32
  %shl.i84 = shl i32 %call15, %conv1.i83
  %shr.i85 = ashr i32 %shl.i84, %conv1.i83
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.i85, ptr %val, align 4
  br label %release

release:                                          ; preds = %if.end20, %if.end14.release_crit_edge, %if.then12, %if.end5, %mag3110_read.exit.release_crit_edge, %mag3110_read.exit.thread, %if.end.release_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then12 ], [ %call15, %if.end14.release_crit_edge ], [ 1, %if.end20 ], [ %call2.i, %mag3110_read.exit.release_crit_edge ], [ 1, %if.end5 ], [ -22, %if.end.release_crit_edge ], [ %call.i, %mag3110_read.exit.thread ]
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %28, label %sw.bb26.cleanup_crit_edge [
    i32 5, label %sw.bb28
    i32 9, label %sw.bb29
  ]

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb28:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %val, align 4
  %31 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1000, ptr %val, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_reg1 = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ctrl_reg1, align 8
  %35 = lshr i8 %34, 5
  %36 = zext i8 %35 to i32
  %arrayidx33 = getelementptr [8 x [2 x i32]], ptr @mag3110_samp_freq, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx33, align 4
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val, align 4
  %arrayidx36 = getelementptr [8 x [2 x i32]], ptr @mag3110_samp_freq, i32 0, i32 %36, i32 1
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx36, align 4
  %42 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val2, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %scan_index39 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %45 = ptrtoint ptr %scan_index39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scan_index39, align 4
  %.tr = trunc i32 %46 to i8
  %47 = shl i8 %.tr, 1
  %conv40 = add i8 %47, 9
  %call.i88 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %44, i8 noundef zeroext %conv40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp.i89 = icmp slt i32 %call.i88, 0
  br i1 %cmp.i89, label %sw.bb37.cleanup_crit_edge, label %if.end45

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i90 = trunc i32 %call.i88 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv.i90) #6
  %49 = lshr i16 %48, 1
  %50 = zext i16 %49 to i32
  %shl.i86 = shl nuw i32 %50, 17
  %shr.i87 = ashr exact i32 %shl.i86, 17
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr.i87, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %sw.bb37.cleanup_crit_edge, %sw.bb31, %sw.bb29, %sw.bb28, %sw.bb26.cleanup_crit_edge, %release, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end45 ], [ 2, %sw.bb31 ], [ 1, %sw.bb29 ], [ 2, %sw.bb28 ], [ %ret.0, %release ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb26.cleanup_crit_edge ], [ %call.i88, %sw.bb37.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %mask, label %if.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 5, label %sw.bb21
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %val, label %sw.bb.sw.epilog_crit_edge [
    i32 0, label %land.lhs.true.i.i
    i32 1, label %land.lhs.true.1.i.i
    i32 2, label %land.lhs.true.2.i.i
    i32 5, label %land.lhs.true.3.i.i
    i32 10, label %land.lhs.true.4.i.i
    i32 20, label %land.lhs.true.5.i.i
    i32 40, label %land.lhs.true.6.i.i
    i32 80, label %land.lhs.true.7.i.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 625000, i32 %val2)
  %cmp5.i.i = icmp eq i32 %val2, 625000
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.if.end4_crit_edge, label %land.lhs.true.i.i.sw.epilog_crit_edge

land.lhs.true.i.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.i.if.end4_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.1.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.1.i.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.1.i.i, label %land.lhs.true.1.i.i.if.end4_crit_edge, label %land.lhs.true.1.i.i.sw.epilog_crit_edge

land.lhs.true.1.i.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.1.i.i.if.end4_crit_edge:            ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.2.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.2.i.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.2.i.i, label %land.lhs.true.2.i.i.if.end4_crit_edge, label %land.lhs.true.2.i.i.sw.epilog_crit_edge

land.lhs.true.2.i.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.2.i.i.if.end4_crit_edge:            ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.3.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.3.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.3.i.i, label %land.lhs.true.3.i.i.if.end4_crit_edge, label %land.lhs.true.3.i.i.sw.epilog_crit_edge

land.lhs.true.3.i.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.3.i.i.if.end4_crit_edge:            ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.4.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.4.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.4.i.i, label %land.lhs.true.4.i.i.if.end4_crit_edge, label %land.lhs.true.4.i.i.sw.epilog_crit_edge

land.lhs.true.4.i.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.4.i.i.if.end4_crit_edge:            ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.5.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.5.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.5.i.i, label %land.lhs.true.5.i.i.if.end4_crit_edge, label %land.lhs.true.5.i.i.sw.epilog_crit_edge

land.lhs.true.5.i.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.5.i.i.if.end4_crit_edge:            ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.6.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i.i, label %land.lhs.true.6.i.i.if.end4_crit_edge, label %land.lhs.true.6.i.i.sw.epilog_crit_edge

land.lhs.true.6.i.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.6.i.i.if.end4_crit_edge:            ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.7.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i.i, label %land.lhs.true.7.i.i.if.end4_crit_edge, label %land.lhs.true.7.i.i.sw.epilog_crit_edge

land.lhs.true.7.i.i.sw.epilog_crit_edge:          ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.7.i.i.if.end4_crit_edge:            ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.7.i.i.if.end4_crit_edge, %land.lhs.true.6.i.i.if.end4_crit_edge, %land.lhs.true.5.i.i.if.end4_crit_edge, %land.lhs.true.4.i.i.if.end4_crit_edge, %land.lhs.true.3.i.i.if.end4_crit_edge, %land.lhs.true.2.i.i.if.end4_crit_edge, %land.lhs.true.1.i.i.if.end4_crit_edge, %land.lhs.true.i.i.if.end4_crit_edge
  %retval.0.i.i.ph = phi i8 [ 0, %land.lhs.true.7.i.i.if.end4_crit_edge ], [ 32, %land.lhs.true.6.i.i.if.end4_crit_edge ], [ 64, %land.lhs.true.5.i.i.if.end4_crit_edge ], [ 96, %land.lhs.true.4.i.i.if.end4_crit_edge ], [ -128, %land.lhs.true.3.i.i.if.end4_crit_edge ], [ -96, %land.lhs.true.2.i.i.if.end4_crit_edge ], [ -64, %land.lhs.true.1.i.i.if.end4_crit_edge ], [ -32, %land.lhs.true.i.i.if.end4_crit_edge ]
  %ctrl_reg1 = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_reg1, align 8
  %6 = and i8 %5, 30
  %conv8 = or i8 %6, %retval.0.i.i.ph
  store i8 %conv8, ptr %ctrl_reg1, align 8
  %7 = lshr exact i8 %retval.0.i.i.ph, 5
  %8 = zext i8 %7 to i32
  %arrayidx.i = getelementptr [8 x [2 x i32]], ptr @mag3110_samp_freq, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp sgt i32 %10, 0
  br i1 %cmp.i, label %if.end.i, label %mag3110_calculate_sleep.exit.thread56

mag3110_calculate_sleep.exit.thread56:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %sleep_val57 = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %sleep_val57 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000, ptr %sleep_val57, align 4
  br label %if.end18

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %10)
  %cmp5.i = icmp ugt i32 %10, 1000
  br i1 %cmp5.i, label %mag3110_calculate_sleep.exit.thread, label %mag3110_calculate_sleep.exit

mag3110_calculate_sleep.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sleep_val54 = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %sleep_val54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %sleep_val54, align 4
  br label %if.then13

mag3110_calculate_sleep.exit:                     ; preds = %if.end.i
  %div11.i.rhs.trunc = trunc i32 %10 to i16
  %div11.i59 = udiv i16 1000, %div11.i.rhs.trunc
  %div11.i.zext = zext i16 %div11.i59 to i32
  %sleep_val = getelementptr inbounds %struct.mag3110_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %sleep_val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div11.i.zext, ptr %sleep_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %10)
  %cmp11 = icmp ugt i32 %10, 25
  br i1 %cmp11, label %mag3110_calculate_sleep.exit.if.then13_crit_edge, label %mag3110_calculate_sleep.exit.if.end18_crit_edge

mag3110_calculate_sleep.exit.if.end18_crit_edge:  ; preds = %mag3110_calculate_sleep.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

mag3110_calculate_sleep.exit.if.then13_crit_edge: ; preds = %mag3110_calculate_sleep.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %mag3110_calculate_sleep.exit.if.then13_crit_edge, %mag3110_calculate_sleep.exit.thread
  %14 = or i8 %conv8, 1
  %15 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ctrl_reg1, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %mag3110_calculate_sleep.exit.if.end18_crit_edge, %mag3110_calculate_sleep.exit.thread56
  %16 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl_reg1, align 8
  %call20 = tail call fastcc i32 @mag3110_change_config(ptr noundef %1, i8 noundef zeroext %17)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %18 = add i32 %val, -10001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20001, i32 %18)
  %19 = icmp ult i32 %18, -20001
  br i1 %19, label %sw.bb21.sw.epilog_crit_edge, label %if.end27

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end27:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %22 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_index, align 4
  %.tr = trunc i32 %23 to i8
  %24 = shl i8 %.tr, 1
  %conv28 = add i8 %24, 9
  %val.tr = trunc i32 %val to i16
  %conv30 = shl nsw i16 %val.tr, 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv30) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %21, i8 noundef zeroext %conv28, i16 noundef zeroext %25) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end27, %sw.bb21.sw.epilog_crit_edge, %if.end18, %land.lhs.true.7.i.i.sw.epilog_crit_edge, %land.lhs.true.6.i.i.sw.epilog_crit_edge, %land.lhs.true.5.i.i.sw.epilog_crit_edge, %land.lhs.true.4.i.i.sw.epilog_crit_edge, %land.lhs.true.3.i.i.sw.epilog_crit_edge, %land.lhs.true.2.i.i.sw.epilog_crit_edge, %land.lhs.true.1.i.i.sw.epilog_crit_edge, %land.lhs.true.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end27 ], [ %call20, %if.end18 ], [ -22, %sw.bb21.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.1.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.2.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.3.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.4.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.5.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.6.i.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.7.i.i.sw.epilog_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_show_samp_freq_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 625000) #6
  %add.ptr.1.i = getelementptr i8, ptr %buf, i32 %call.i
  %sub.1.i = sub i32 4096, %call.i
  %call.1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1.i, i32 noundef %sub.1.i, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 250000) #6
  %add.1.i = add i32 %call.1.i, %call.i
  %add.ptr.2.i = getelementptr i8, ptr %buf, i32 %add.1.i
  %sub.2.i = sub i32 4096, %add.1.i
  %call.2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2.i, i32 noundef %sub.2.i, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef 500000) #6
  %add.2.i = add i32 %call.2.i, %add.1.i
  %add.ptr.3.i = getelementptr i8, ptr %buf, i32 %add.2.i
  %sub.3.i = sub i32 4096, %add.2.i
  %call.3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3.i, i32 noundef %sub.3.i, ptr noundef nonnull @.str.15, i32 noundef 5, i32 noundef 0) #6
  %add.3.i = add i32 %call.3.i, %add.2.i
  %add.ptr.4.i = getelementptr i8, ptr %buf, i32 %add.3.i
  %sub.4.i = sub i32 4096, %add.3.i
  %call.4.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4.i, i32 noundef %sub.4.i, ptr noundef nonnull @.str.15, i32 noundef 10, i32 noundef 0) #6
  %add.4.i = add i32 %call.4.i, %add.3.i
  %add.ptr.5.i = getelementptr i8, ptr %buf, i32 %add.4.i
  %sub.5.i = sub i32 4096, %add.4.i
  %call.5.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5.i, i32 noundef %sub.5.i, ptr noundef nonnull @.str.15, i32 noundef 20, i32 noundef 0) #6
  %add.5.i = add i32 %call.5.i, %add.4.i
  %add.ptr.6.i = getelementptr i8, ptr %buf, i32 %add.5.i
  %sub.6.i = sub i32 4096, %add.5.i
  %call.6.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6.i, i32 noundef %sub.6.i, ptr noundef nonnull @.str.15, i32 noundef 40, i32 noundef 0) #6
  %add.6.i = add i32 %call.6.i, %add.5.i
  %add.ptr.7.i = getelementptr i8, ptr %buf, i32 %add.6.i
  %sub.7.i = sub i32 4096, %add.6.i
  %call.7.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7.i, i32 noundef %sub.7.i, ptr noundef nonnull @.str.15, i32 noundef 80, i32 noundef 0) #6
  %add.7.i = add i32 %call.7.i, %add.6.i
  %sub4.i = add i32 %add.7.i, -1
  %arrayidx5.i = getelementptr i8, ptr %buf, i32 %sub4.i
  %0 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx5.i, align 1
  ret i32 %add.7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mag3110_request(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg1 = getelementptr inbounds %struct.mag3110_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_reg1, align 8
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %or = or i8 %1, 2
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 16, i8 noundef zeroext %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %sleep_val = getelementptr inbounds %struct.mag3110_data, ptr %data, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %if.end8
  %dec49 = phi i32 [ 149, %if.end8 ], [ %dec, %if.end28.while.body_crit_edge ]
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %while.body.cleanup_crit_edge, label %if.end16

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %while.body
  %and17 = and i32 %call12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 7
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %7 = ptrtoint ptr %sleep_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sleep_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %8)
  %cmp22 = icmp slt i32 %8, 21
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %8, 250
  %mul27 = mul i32 %8, 500
  tail call void @usleep_range_state(i32 noundef %mul, i32 noundef %mul27, i32 noundef 2) #6
  br label %if.end28

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24
  %dec = add nsw i32 %dec49, -1
  %cmp9.not = icmp eq i32 %dec49, 0
  br i1 %cmp9.not, label %do.end, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %call12, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_suspend(ptr noundef %dev) #2 align 64 {
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
  %5 = load ptr, ptr %3, align 8
  %ctrl_reg1.i = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_reg1.i, align 8
  %8 = and i8 %7, -2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 16, i8 noundef zeroext %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vddio_reg = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vddio_reg, align 4
  %call8 = tail call i32 @regulator_disable(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  %vdd_reg = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vdd_reg, align 8
  %call12 = tail call i32 @regulator_disable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end11.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.23, %if.end.cleanup.sink.split_crit_edge ], [ @.str.26, %if.end11.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call8, %if.end.cleanup.sink.split_crit_edge ], [ %call12, %if.end11.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.26.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mag3110_resume(ptr noundef %dev) #2 align 64 {
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
  %vdd_reg = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd_reg, align 8
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vddio_reg = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %vddio_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vddio_reg, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #9
  %8 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd_reg, align 8
  %call10 = tail call i32 @regulator_disable(ptr noundef %9) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %ctrl_reg1 = getelementptr inbounds %struct.mag3110_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctrl_reg1, align 8
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 16, i8 noundef zeroext %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call3, %do.end8 ], [ %call12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_mag3110__288_654_mag3110_driver_init6, !1, !"__initcall__kmod_mag3110__288_654_mag3110_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 654, i32 1}
!2 = !{ptr @__exitcall_mag3110_driver_exit, !1, !"__exitcall_mag3110_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 656, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 657, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 658, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 646, i32 11}
!12 = !{ptr @mag3110_driver, !13, !"mag3110_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 644, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 485, i32 51}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 488, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 490, i32 53}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 493, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 497, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mag3110_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @mag3110_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 503, i32 3}
!32 = !{ptr @mag3110_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mag3110_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mag3110_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 516, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mag3110_info, !38, !"mag3110_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 464, i32 30}
!39 = !{ptr @mag3110_group, !40, !"mag3110_group", i1 false, i1 false}
!40 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 460, i32 37}
!41 = !{ptr @mag3110_attributes, !42, !"mag3110_attributes", i1 false, i1 false}
!42 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 455, i32 26}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 154, i32 8}
!45 = !{ptr @iio_dev_attr_sampling_frequency_available, !44, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 125, i32 4}
!48 = !{ptr @mag3110_samp_freq, !49, !"mag3110_samp_freq", i1 false, i1 false}
!49 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 143, i32 18}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 94, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mag3110_request._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mag3110_request._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @mag3110_channels, !56, !"mag3110_channels", i1 false, i1 false}
!56 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 437, i32 35}
!57 = !{ptr @mag3110_scan_masks, !58, !"mag3110_scan_masks", i1 false, i1 false}
!58 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 470, i32 28}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 193, i32 4}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mag3110_wait_standby._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mag3110_wait_standby._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 204, i32 3}
!66 = !{ptr @mag3110_wait_standby._entry.20, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mag3110_wait_standby._entry_ptr.22, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mag3110_of_match, !69, !"mag3110_of_match", i1 false, i1 false}
!69 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 638, i32 34}
!70 = !{ptr @mag3110_pm_ops, !71, !"mag3110_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 626, i32 8}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 590, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mag3110_suspend._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mag3110_suspend._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 596, i32 3}
!79 = !{ptr @mag3110_suspend._entry.25, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mag3110_suspend._entry_ptr.27, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 611, i32 3}
!83 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mag3110_resume._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @mag3110_resume._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 617, i32 3}
!88 = !{ptr @mag3110_resume._entry.30, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mag3110_resume._entry_ptr.32, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @mag3110_id, !91, !"mag3110_id", i1 false, i1 false}
!91 = !{!"../drivers/iio/magnetometer/mag3110.c", i32 632, i32 35}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i8 0, i8 2}
!102 = !{!"auto-init"}
