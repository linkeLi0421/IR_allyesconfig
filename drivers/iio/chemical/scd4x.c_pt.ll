; ModuleID = '/llk/IR_all_yes/drivers/iio/chemical/scd4x.c_pt.bc'
source_filename = "../drivers/iio/chemical/scd4x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.scd4x_state = type { ptr, %struct.mutex, ptr }
%struct.anon.88 = type { [3 x i16], i64 }

@__initcall__kmod_scd4x__288_692_scd4x_i2c_driver_init6 = internal global ptr @scd4x_i2c_driver_init, section ".initcall6.init", align 4
@scd4x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @scd4x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @scd4x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scd4x_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_scd4x_i2c_driver_exit = internal global ptr @scd4x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [46 x i8] c"scd4x.author=Roan van Dijk <roan@protonic.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [68 x i8] c"scd4x.description=Sensirion SCD4X carbon dioxide sensor core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [38 x i8] c"scd4x.file=drivers/iio/chemical/scd4x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"scd4x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scd4x\00", [26 x i8] zeroinitializer }, align 32
@scd4x_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,scd40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,scd41\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@scd4x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @scd4x_suspend, ptr @scd4x_resume, ptr @scd4x_suspend, ptr @scd4x_resume, ptr @scd4x_suspend, ptr @scd4x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@scd4x_probe.scd4x_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@scd4x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@scd4x_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@scd4x_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @scd4x_attr_group, ptr @scd4x_read_raw, ptr null, ptr null, ptr @scd4x_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@scd4x_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 24, i32 0, i32 34, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 1, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 45, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 18, i32 0, i32 0, i32 2, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@scd4x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 653, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to stop measurement: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scd4x_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/chemical/scd4x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scd4x_probe._entry_ptr = internal global ptr @scd4x_probe._entry, section ".printk_index", align 4
@scd4x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 666, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to start measurement: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@scd4x_probe._entry_ptr.11 = internal global ptr @scd4x_probe._entry.9, section ".printk_index", align 4
@scd4x_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @scd4x_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@scd4x_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_calibration_auto_enable, ptr @iio_dev_attr_calibration_forced_value, ptr getelementptr (i8, ptr @iio_const_attr_calibration_forced_value_available, i64 4), ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_calibration_auto_enable = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @calibration_auto_enable_show, ptr @calibration_auto_enable_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_calibration_forced_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @calibration_forced_value_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_calibration_forced_value_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.24, %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"calibration_auto_enable\00", [40 x i8] zeroinitializer }, align 32
@calibration_auto_enable_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read automatic calibration\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"calibration_auto_enable_show\00", [35 x i8] zeroinitializer }, align 32
@calibration_auto_enable_show._entry_ptr = internal global ptr @calibration_auto_enable_show._entry, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@scd4x_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 160, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRC error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scd4x_read\00", [21 x i8] zeroinitializer }, align 32
@scd4x_read._entry_ptr = internal global ptr @scd4x_read._entry, section ".printk_index", align 4
@calibration_auto_enable_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 449, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set automatic calibration\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"calibration_auto_enable_store\00", [34 x i8] zeroinitializer }, align 32
@calibration_auto_enable_store._entry_ptr = internal global ptr @calibration_auto_enable_store._entry, section ".printk_index", align 4
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"calibration_forced_value\00", [39 x i8] zeroinitializer }, align 32
@calibration_forced_value_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 475, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"forced calibration has failed\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"calibration_forced_value_store\00", [33 x i8] zeroinitializer }, align 32
@calibration_forced_value_store._entry_ptr = internal global ptr @calibration_forced_value_store._entry, section ".printk_index", align 4
@scd4x_write_and_fetch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.23, ptr @.str.6, i32 242, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scd4x_write_and_fetch\00", [42 x i8] zeroinitializer }, align 32
@scd4x_write_and_fetch._entry_ptr = internal global ptr @scd4x_write_and_fetch._entry, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[0 1 2000]\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"calibration_forced_value_available\00", [61 x i8] zeroinitializer }, align 32
@scd4x_wait_meas_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.26, ptr @.str.6, i32 303, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scd4x_wait_meas_poll\00", [43 x i8] zeroinitializer }, align 32
@scd4x_wait_meas_poll._entry_ptr = internal global ptr @scd4x_wait_meas_poll._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8625, i64 16262]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 8625, i64 16262]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 18, i64 24]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 58552, i64 60421]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 58552, i64 60421]
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"scd4x_i2c_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 684, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 686, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"scd4x_dt_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 677, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"scd4x_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 577, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"scd4x_scan_masks\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 617, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 628, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"scd4x_crc8_table\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 67, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"scd4x_info\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 499, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"scd4x_channels\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 505, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 639, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 641, i32 50 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 653, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 666, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"scd4x_attr_group\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 495, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"scd4x_attrs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 488, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant [37 x i8] c"iio_dev_attr_calibration_auto_enable\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [38 x i8] c"iio_dev_attr_calibration_forced_value\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [50 x i8] c"iio_const_attr_calibration_forced_value_available\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 482, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 420, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 426, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 160, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 449, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 483, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 475, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 242, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 485, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [32 x i8] c"../drivers/iio/chemical/scd4x.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 303, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_scd4x_i2c_driver_exit, ptr @__initcall__kmod_scd4x__288_692_scd4x_i2c_driver_init6, ptr @calibration_auto_enable_show._entry, ptr @calibration_auto_enable_show._entry_ptr, ptr @calibration_auto_enable_store._entry, ptr @calibration_auto_enable_store._entry_ptr, ptr @calibration_forced_value_store._entry, ptr @calibration_forced_value_store._entry_ptr, ptr @scd4x_i2c_driver_exit, ptr @scd4x_probe._entry, ptr @scd4x_probe._entry.9, ptr @scd4x_probe._entry_ptr, ptr @scd4x_probe._entry_ptr.11, ptr @scd4x_read._entry, ptr @scd4x_read._entry_ptr, ptr @scd4x_wait_meas_poll._entry, ptr @scd4x_wait_meas_poll._entry_ptr, ptr @scd4x_write_and_fetch._entry, ptr @scd4x_write_and_fetch._entry_ptr, ptr @scd4x_i2c_driver, ptr @.str, ptr @scd4x_dt_ids, ptr @scd4x_pm_ops, ptr @scd4x_probe.scd4x_scan_masks, ptr @scd4x_probe.__key, ptr @.str.1, ptr @scd4x_crc8_table, ptr @scd4x_info, ptr @scd4x_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @scd4x_attr_group, ptr @scd4x_attrs, ptr @iio_dev_attr_calibration_auto_enable, ptr @iio_dev_attr_calibration_forced_value, ptr @iio_const_attr_calibration_forced_value_available, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_probe.scd4x_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_calibration_auto_enable to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_calibration_forced_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_calibration_forced_value_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibration_auto_enable_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibration_auto_enable_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibration_forced_value_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_write_and_fetch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scd4x_wait_meas_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scd4x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @scd4x_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scd4x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @scd4x_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd4x_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 2
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 100) #6
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
  %lock = getelementptr inbounds %struct.scd4x_state, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @scd4x_probe.__key) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  tail call void @crc8_populate_msb(ptr noundef nonnull @scd4x_crc8_table, i8 noundef zeroext 49) #6
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @scd4x_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %name4, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @scd4x_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %num_channels, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @scd4x_probe.scd4x_scan_masks, ptr %available_scan_masks, align 4
  %call5 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %vdd = getelementptr inbounds %struct.scd4x_state, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %vdd, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call5 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call i32 @regulator_enable(ptr noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @scd4x_disable_regulator, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end21, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vdd, align 4
  %call.i94 = tail call i32 @regulator_disable(ptr noundef %12) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16262, ptr %buf.i, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end21.do.end27_crit_edge, label %if.end.i.i

if.end21.do.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp2.not.i.i, label %if.end28, label %if.end.i.i.do.end27_crit_edge

if.end.i.i.do.end27_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end27:                                         ; preds = %if.end.i.i.do.end27_crit_edge, %if.end21.do.end27_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %if.end21.do.end27_crit_edge ], [ -5, %if.end.i.i.do.end27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call29 = call i32 @msleep_interruptible(i32 noundef 500) #6
  %call30 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @scd4x_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %call34 = call fastcc i32 @scd4x_send_command(ptr noundef %1, i32 noundef 8625)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call34) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %call.i90 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @scd4x_stop_meas, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i91 = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i91, label %if.end44, label %devm_add_action_or_reset.exit93

devm_add_action_or_reset.exit93:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 16262, ptr %buf.i.i, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %buf.i.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %devm_add_action_or_reset.exit93, %do.end39, %if.end28.cleanup_crit_edge, %do.end27, %devm_add_action_or_reset.exit, %if.end12.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then8 ], [ %retval.0.i.ph, %do.end27 ], [ %call34, %do.end39 ], [ %call45, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call30, %if.end28.cleanup_crit_edge ], [ %call.i90, %devm_add_action_or_reset.exit93 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scd4x_disable_regulator(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.scd4x_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scd4x_send_command(ptr nocapture noundef readonly %state, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %buf.i36 = alloca [2 x i8], align 2
  %buf.i = alloca [2 x i8], align 2
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.then [
    i32 16262, label %entry.if.end4_crit_edge
    i32 8625, label %entry.if.end4_crit_edge59
  ]

entry.if.end4_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 16262, ptr %buf.i, align 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %call.i.i42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp.i43 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp.i43, label %if.then.scd4x_send_command.exit_crit_edge, label %if.end.i45

if.then.scd4x_send_command.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit

if.end.i45:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i42)
  %cmp2.not.i44 = icmp eq i32 %call.i.i42, 2
  br i1 %cmp2.not.i44, label %if.end, label %if.end.i45.scd4x_send_command.exit_crit_edge

if.end.i45.scd4x_send_command.exit_crit_edge:     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit

scd4x_send_command.exit:                          ; preds = %if.end.i45.scd4x_send_command.exit_crit_edge, %if.then.scd4x_send_command.exit_crit_edge
  %retval.0.i47.ph = phi i32 [ -5, %if.end.i45.scd4x_send_command.exit_crit_edge ], [ %call.i.i42, %if.then.scd4x_send_command.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call3 = call i32 @msleep_interruptible(i32 noundef 500) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge, %entry.if.end4_crit_edge59
  %conv = trunc i32 %cmd to i16
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %buf, align 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp2.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp2.not.i, label %if.end10, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %cmd, label %if.then16 [
    i32 16262, label %if.end10.cleanup_crit_edge
    i32 8625, label %if.end10.cleanup_crit_edge60
  ]

if.end10.cleanup_crit_edge60:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i36) #6
  %8 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8625, ptr %buf.i36, align 2
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %buf.i36, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then16.scd4x_send_command.exit41_crit_edge, label %if.end.i.i

if.then16.scd4x_send_command.exit41_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit41

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp2.not.i.i, label %scd4x_send_command.exit41.thread, label %if.end.i.i.scd4x_send_command.exit41_crit_edge

if.end.i.i.scd4x_send_command.exit41_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit41

scd4x_send_command.exit41.thread:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i36) #6
  br label %cleanup

scd4x_send_command.exit41:                        ; preds = %if.end.i.i.scd4x_send_command.exit41_crit_edge, %if.then16.scd4x_send_command.exit41_crit_edge
  %retval.0.i35.i.ph = phi i32 [ -5, %if.end.i.i.scd4x_send_command.exit41_crit_edge ], [ %call.i.i.i, %if.then16.scd4x_send_command.exit41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i36) #6
  br label %cleanup

cleanup:                                          ; preds = %scd4x_send_command.exit41, %scd4x_send_command.exit41.thread, %if.end10.cleanup_crit_edge, %if.end10.cleanup_crit_edge60, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %scd4x_send_command.exit
  %retval.0 = phi i32 [ %retval.0.i47.ph, %scd4x_send_command.exit ], [ %retval.0.i35.i.ph, %scd4x_send_command.exit41 ], [ 0, %scd4x_send_command.exit41.thread ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge60 ], [ -5, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd4x_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %scan = alloca %struct.anon.88, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan) #6
  %4 = call ptr @memset(ptr %scan, i32 0, i32 16)
  %lock = getelementptr inbounds %struct.scd4x_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call2 = call fastcc i32 @scd4x_read_poll(ptr noundef %3, ptr noundef nonnull %scan)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call4 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scan_timestamp.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %8, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call4, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #6
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.out_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %11) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scd4x_stop_meas(ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 16262, ptr %buf.i, align 2
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd4x_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i = alloca [3 x i16], align 2
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #6
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tmp, align 2, !annotation !99
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb19
    i32 5, label %sw.bb20
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
  %lock = getelementptr inbounds %struct.scd4x_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #6
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %buf.i, align 2, !annotation !99
  %7 = getelementptr inbounds [3 x i16], ptr %buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %7, align 2, !annotation !99
  %9 = getelementptr inbounds [3 x i16], ptr %buf.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %9, align 2, !annotation !99
  %call.i = call fastcc i32 @scd4x_read_poll(ptr noundef %1, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.scd4x_read_channel.exit_crit_edge

if.end.scd4x_read_channel.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_read_channel.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [3 x i16], ptr %buf.i, i32 0, i32 %5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %12 to i32
  br label %scd4x_read_channel.exit

scd4x_read_channel.exit:                          ; preds = %if.end.i, %if.end.scd4x_read_channel.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %call.i, %if.end.scd4x_read_channel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %scd4x_read_channel.exit.cleanup_crit_edge, label %if.end5

scd4x_read_channel.exit.cleanup_crit_edge:        ; preds = %scd4x_read_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %scd4x_read_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %15, label %sw.bb6.cleanup_crit_edge [
    i32 24, label %if.then8
    i32 9, label %if.then11
    i32 18, label %if.then15
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val, align 4
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %val2, align 4
  br label %cleanup

if.then11:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 175000, ptr %val, align 4
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65536, ptr %val2, align 4
  br label %cleanup

if.then15:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100000, ptr %val, align 4
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65536, ptr %val2, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -16852, ptr %val, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 114286, ptr %val2, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %lock21 = getelementptr inbounds %struct.scd4x_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock21, i32 noundef 0) #6
  %call22 = call fastcc i32 @scd4x_read(ptr noundef %1, i32 noundef 8984, ptr noundef nonnull %tmp, i32 noundef 2)
  tail call void @mutex_unlock(ptr noundef %lock21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end26, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tmp, align 2
  %conv = zext i16 %26 to i32
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %sw.bb20.cleanup_crit_edge, %sw.bb19, %if.then15, %if.then11, %if.then8, %sw.bb6.cleanup_crit_edge, %if.end5, %scd4x_read_channel.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end26 ], [ 2, %sw.bb19 ], [ 2, %if.then8 ], [ 10, %if.then11 ], [ 10, %if.then15 ], [ 1, %if.end5 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %retval.0.i, %scd4x_read_channel.exit.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ %call22, %sw.bb20.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd4x_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mask)
  %cond = icmp eq i32 %mask, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.scd4x_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %conv = trunc i32 %val to i16
  %call1 = tail call fastcc i32 @scd4x_write(ptr noundef %1, i32 noundef 9245, i16 noundef zeroext %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibration_auto_enable_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %bval = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval) #6
  %2 = ptrtoint ptr %bval to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %bval, align 2, !annotation !99
  %lock = getelementptr inbounds %struct.scd4x_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call2 = call fastcc i32 @scd4x_read(ptr noundef %1, i32 noundef 8979, ptr noundef nonnull %bval, i32 noundef 2)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %bval to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bval, align 2
  %5 = and i16 %4, 1
  %conv6 = zext i16 %5 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %conv6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call7, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibration_auto_enable_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !99
  %call2 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1, !range !98
  %5 = zext i8 %4 to i16
  %lock = getelementptr inbounds %struct.scd4x_state, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call4 = call fastcc i32 @scd4x_write(ptr noundef %1, i32 noundef 9238, i16 noundef zeroext %5)
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call4, %do.end ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scd4x_read(ptr nocapture noundef readonly %state, i32 noundef %cmd, ptr nocapture noundef writeonly %response, i32 noundef %response_sz) unnamed_addr #2 align 64 {
entry:
  %buf.i67 = alloca [2 x i8], align 2
  %buf.i = alloca [2 x i8], align 2
  %buf = alloca [9 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #6
  %2 = getelementptr inbounds i8, ptr %buf, i32 2
  %3 = call ptr @memset(ptr %2, i32 255, i32 7)
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %cmd, label %if.then [
    i32 60421, label %entry.if.end5_crit_edge
    i32 58552, label %entry.if.end5_crit_edge86
  ]

entry.if.end5_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 16262, ptr %buf.i, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.scd4x_send_command.exit.thread_crit_edge, label %if.end.i.i

if.then.scd4x_send_command.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit.thread

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp2.not.i.i, label %if.end, label %if.end.i.i.scd4x_send_command.exit.thread_crit_edge

if.end.i.i.scd4x_send_command.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit.thread

scd4x_send_command.exit.thread:                   ; preds = %if.end.i.i.scd4x_send_command.exit.thread_crit_edge, %if.then.scd4x_send_command.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %if.then.scd4x_send_command.exit.thread_crit_edge ], [ -5, %if.end.i.i.scd4x_send_command.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call4 = call i32 @msleep_interruptible(i32 noundef 500) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge, %entry.if.end5_crit_edge86
  %div = sdiv i32 %response_sz, 2
  %add = add i32 %div, %response_sz
  %conv = trunc i32 %cmd to i16
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %buf, align 2
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end5.cleanup_crit_edge, label %if.end.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp2.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp5.i = icmp eq i32 %add, 0
  br i1 %cmp5.i, label %if.end4.i.for.end_crit_edge, label %if.end7.i

if.end4.i.for.end_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end7.i:                                        ; preds = %if.end4.i
  %call.i25.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf, i32 noundef %add, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp9.i = icmp slt i32 %call.i25.i, 0
  br i1 %cmp9.i, label %if.end7.i.cleanup_crit_edge, label %if.end11.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i25.i, i32 %add)
  %cmp12.not.i = icmp eq i32 %call.i25.i, %add
  br i1 %cmp12.not.i, label %scd4x_i2c_xfer.exit, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

scd4x_i2c_xfer.exit:                              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp1282 = icmp sgt i32 %add, 0
  br i1 %cmp1282, label %scd4x_i2c_xfer.exit.for.body_crit_edge, label %scd4x_i2c_xfer.exit.for.end_crit_edge

scd4x_i2c_xfer.exit.for.end_crit_edge:            ; preds = %scd4x_i2c_xfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

scd4x_i2c_xfer.exit.for.body_crit_edge:           ; preds = %scd4x_i2c_xfer.exit
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %scd4x_i2c_xfer.exit.for.body_crit_edge
  %i.084 = phi i32 [ %add27, %if.end22.for.body_crit_edge ], [ 0, %scd4x_i2c_xfer.exit.for.body_crit_edge ]
  %rsp.083 = phi ptr [ %incdec.ptr26, %if.end22.for.body_crit_edge ], [ %response, %scd4x_i2c_xfer.exit.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.084
  %call15 = call zeroext i8 @crc8(ptr noundef nonnull @scd4x_crc8_table, ptr noundef %add.ptr, i32 noundef 2, i8 noundef zeroext -1) #6
  %add17 = add i32 %i.084, 2
  %arrayidx = getelementptr [9 x i8], ptr %buf, i32 0, i32 %add17
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call15, i8 %10)
  %cmp19.not = icmp eq i8 %call15, %10
  br i1 %cmp19.not, label %if.end22, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr, align 1
  %incdec.ptr = getelementptr i8, ptr %rsp.083, i32 1
  %13 = ptrtoint ptr %rsp.083 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rsp.083, align 1
  %add24 = add nsw i32 %i.084, 1
  %arrayidx25 = getelementptr [9 x i8], ptr %buf, i32 0, i32 %add24
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  %incdec.ptr26 = getelementptr i8, ptr %rsp.083, i32 2
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %incdec.ptr, align 1
  %add27 = add i32 %i.084, 3
  %cmp12 = icmp slt i32 %add27, %add
  br i1 %cmp12, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %scd4x_i2c_xfer.exit.for.end_crit_edge, %if.end4.i.for.end_crit_edge
  %17 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %cmd, label %if.then33 [
    i32 60421, label %for.end.cleanup_crit_edge
    i32 58552, label %for.end.cleanup_crit_edge87
  ]

for.end.cleanup_crit_edge87:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i67) #6
  %18 = ptrtoint ptr %buf.i67 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8625, ptr %buf.i67, align 2
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call.i.i.i68 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %buf.i67, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i68)
  %cmp.i.i69 = icmp slt i32 %call.i.i.i68, 0
  br i1 %cmp.i.i69, label %if.then33.scd4x_send_command.exit75.thread_crit_edge, label %if.end.i.i72

if.then33.scd4x_send_command.exit75.thread_crit_edge: ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit75.thread

if.end.i.i72:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i68)
  %cmp2.not.i.i71 = icmp eq i32 %call.i.i.i68, 2
  br i1 %cmp2.not.i.i71, label %scd4x_send_command.exit75, label %if.end.i.i72.scd4x_send_command.exit75.thread_crit_edge

if.end.i.i72.scd4x_send_command.exit75.thread_crit_edge: ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit75.thread

scd4x_send_command.exit75.thread:                 ; preds = %if.end.i.i72.scd4x_send_command.exit75.thread_crit_edge, %if.then33.scd4x_send_command.exit75.thread_crit_edge
  %retval.0.i74.ph = phi i32 [ %call.i.i.i68, %if.then33.scd4x_send_command.exit75.thread_crit_edge ], [ -5, %if.end.i.i72.scd4x_send_command.exit75.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i67) #6
  br label %cleanup

scd4x_send_command.exit75:                        ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i67) #6
  br label %cleanup

cleanup:                                          ; preds = %scd4x_send_command.exit75, %scd4x_send_command.exit75.thread, %for.end.cleanup_crit_edge, %for.end.cleanup_crit_edge87, %do.end, %if.end11.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %scd4x_send_command.exit.thread
  %retval.0 = phi i32 [ -5, %do.end ], [ %retval.0.i.ph, %scd4x_send_command.exit.thread ], [ %retval.0.i74.ph, %scd4x_send_command.exit75.thread ], [ 0, %scd4x_send_command.exit75 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge87 ], [ -5, %if.end11.i.cleanup_crit_edge ], [ %call.i25.i, %if.end7.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scd4x_write(ptr nocapture noundef readonly %state, i32 noundef %cmd, i16 noundef zeroext %arg) unnamed_addr #2 align 64 {
entry:
  %buf.i30 = alloca [2 x i8], align 2
  %buf.i = alloca [2 x i8], align 2
  %buf = alloca [5 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %1 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %conv = trunc i32 %cmd to i16
  %2 = getelementptr inbounds i8, ptr %buf, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 2
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %buf, align 2
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %arg, ptr %0, align 2
  %call = call zeroext i8 @crc8(ptr noundef nonnull @scd4x_crc8_table, ptr noundef %0, i32 noundef 2, i8 noundef zeroext -1) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16262, ptr %buf.i, align 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.scd4x_send_command.exit.thread_crit_edge, label %if.end.i.i

entry.scd4x_send_command.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit.thread

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp2.not.i.i, label %if.end, label %if.end.i.i.scd4x_send_command.exit.thread_crit_edge

if.end.i.i.scd4x_send_command.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit.thread

scd4x_send_command.exit.thread:                   ; preds = %if.end.i.i.scd4x_send_command.exit.thread_crit_edge, %entry.scd4x_send_command.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %entry.scd4x_send_command.exit.thread_crit_edge ], [ -5, %if.end.i.i.scd4x_send_command.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call5 = call i32 @msleep_interruptible(i32 noundef 500) #6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %buf, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i)
  %cmp2.not.i = icmp eq i32 %call.i.i, 5
  br i1 %cmp2.not.i, label %if.end11, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13871, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 13871
  br i1 %cmp.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i30) #6
  %12 = ptrtoint ptr %buf.i30 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 8625, ptr %buf.i30, align 2
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %call.i.i.i31 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %buf.i30, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i31)
  %cmp.i.i32 = icmp slt i32 %call.i.i.i31, 0
  br i1 %cmp.i.i32, label %if.then13.scd4x_send_command.exit38.thread_crit_edge, label %if.end.i.i35

if.then13.scd4x_send_command.exit38.thread_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit38.thread

if.end.i.i35:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i31)
  %cmp2.not.i.i34 = icmp eq i32 %call.i.i.i31, 2
  br i1 %cmp2.not.i.i34, label %scd4x_send_command.exit38, label %if.end.i.i35.scd4x_send_command.exit38.thread_crit_edge

if.end.i.i35.scd4x_send_command.exit38.thread_crit_edge: ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit38.thread

scd4x_send_command.exit38.thread:                 ; preds = %if.end.i.i35.scd4x_send_command.exit38.thread_crit_edge, %if.then13.scd4x_send_command.exit38.thread_crit_edge
  %retval.0.i37.ph = phi i32 [ %call.i.i.i31, %if.then13.scd4x_send_command.exit38.thread_crit_edge ], [ -5, %if.end.i.i35.scd4x_send_command.exit38.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i30) #6
  br label %cleanup

scd4x_send_command.exit38:                        ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i30) #6
  br label %cleanup

cleanup:                                          ; preds = %scd4x_send_command.exit38, %scd4x_send_command.exit38.thread, %if.end11.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %scd4x_send_command.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.ph, %scd4x_send_command.exit.thread ], [ %retval.0.i37.ph, %scd4x_send_command.exit38.thread ], [ 0, %scd4x_send_command.exit38 ], [ 0, %if.end11.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibration_forced_value_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %buf.i1.i = alloca [2 x i8], align 2
  %buf.i.i = alloca [2 x i8], align 2
  %buf.i = alloca [9 x i8], align 1
  %arg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %arg) #6
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %arg, align 2, !annotation !99
  %call2 = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %arg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2000, i16 %4)
  %cmp5 = icmp ugt i16 %4, 2000
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.scd4x_state, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arg, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i) #6
  %9 = getelementptr inbounds [9 x i8], ptr %buf.i, i32 0, i32 1
  %10 = getelementptr inbounds [9 x i8], ptr %buf.i, i32 0, i32 2
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 9)
  %call.i = call fastcc i32 @scd4x_write(ptr noundef %1, i32 noundef 13871, i16 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.err.i_crit_edge

if.end8.err.i_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end.i:                                         ; preds = %if.end8
  %call2.i = call i32 @msleep_interruptible(i32 noundef 400) #6
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.i.err.i_crit_edge, label %if.end5.i

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp6.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp6.not.i, label %for.body.preheader.i, label %if.end5.i.err.i_crit_edge

if.end5.i.err.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

for.body.preheader.i:                             ; preds = %if.end5.i
  %call11.i = call zeroext i8 @crc8(ptr noundef nonnull @scd4x_crc8_table, ptr noundef nonnull %buf.i, i32 noundef 2, i8 noundef zeroext -1) #6
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call11.i, i8 %13)
  %cmp14.not.i = icmp eq i8 %call11.i, %13
  br i1 %cmp14.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16) #9
  br label %err.i

if.end17.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf.i, align 1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8625, ptr %buf.i.i, align 2
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %buf.i.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp2.not.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  %spec.select.i = select i1 %cmp2.not.i.i.i, i32 0, i32 -5
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 %call.i.i.i.i, i32 %spec.select.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %scd4x_write_and_fetch.exit

err.i:                                            ; preds = %do.end.i, %if.end5.i.err.i_crit_edge, %if.end.i.err.i_crit_edge, %if.end8.err.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end8.err.i_crit_edge ], [ %call.i.i, %if.end.i.err.i_crit_edge ], [ -5, %do.end.i ], [ -5, %if.end5.i.err.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %21 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8625, ptr %buf.i1.i, align 2
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i.i.i2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %buf.i1.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  br label %scd4x_write_and_fetch.exit

scd4x_write_and_fetch.exit:                       ; preds = %err.i, %if.end17.i
  %val.sroa.5.0 = phi i8 [ -1, %err.i ], [ %17, %if.end17.i ]
  %val.sroa.0.0 = phi i8 [ -1, %err.i ], [ %15, %if.end17.i ]
  %retval.0.i = phi i32 [ %ret.0.i, %err.i ], [ %retval.0.i.i, %if.end17.i ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  %val.sroa.5.0.insert.ext = zext i8 %val.sroa.5.0 to i16
  %val.sroa.0.0.insert.ext = zext i8 %val.sroa.0.0 to i16
  %val.sroa.0.0.insert.shift = shl nuw i16 %val.sroa.0.0.insert.ext, 8
  %val.sroa.0.0.insert.insert = or i16 %val.sroa.0.0.insert.shift, %val.sroa.5.0.insert.ext
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %val.sroa.0.0.insert.insert)
  %cmp12 = icmp eq i16 %val.sroa.0.0.insert.insert, 255
  br i1 %cmp12, label %do.end, label %if.end15

do.end:                                           ; preds = %scd4x_write_and_fetch.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end15:                                         ; preds = %scd4x_write_and_fetch.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool16.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool16.not, i32 %len, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %if.end15 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %arg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scd4x_read_poll(ptr nocapture noundef readonly %state, ptr nocapture noundef writeonly %buf) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [3 x i16], align 2
  %buf.i.i = alloca [2 x i8], align 2
  %bval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %2 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %bval.i, align 2, !annotation !99
  %call.i = call fastcc i32 @scd4x_read(ptr noundef %state, i32 noundef 58552, ptr noundef nonnull %bval.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.scd4x_wait_meas_poll.exit_crit_edge

entry.scd4x_wait_meas_poll.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_wait_meas_poll.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %bval.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bval.i, align 2
  %5 = and i16 %4, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool2.not.i = icmp eq i16 %5, 0
  br i1 %tobool2.not.i, label %do.cond.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %6 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %bval.i, align 2, !annotation !99
  %call.1.i = call fastcc i32 @scd4x_read(ptr noundef %state, i32 noundef 58552, ptr noundef nonnull %bval.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %do.cond.i.scd4x_wait_meas_poll.exit_crit_edge

do.cond.i.scd4x_wait_meas_poll.exit_crit_edge:    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_wait_meas_poll.exit

if.end.1.i:                                       ; preds = %do.cond.i
  %7 = ptrtoint ptr %bval.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bval.i, align 2
  %9 = and i16 %8, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.not.1.i = icmp eq i16 %9, 0
  br i1 %tobool2.not.1.i, label %do.cond.1.i, label %if.end.1.i.if.end_crit_edge

if.end.1.i.if.end_crit_edge:                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.1.i:                                      ; preds = %if.end.1.i
  %call5.1.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %10 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %bval.i, align 2, !annotation !99
  %call.2.i = call fastcc i32 @scd4x_read(ptr noundef %state, i32 noundef 58552, ptr noundef nonnull %bval.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %do.cond.1.i.scd4x_wait_meas_poll.exit_crit_edge

do.cond.1.i.scd4x_wait_meas_poll.exit_crit_edge:  ; preds = %do.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_wait_meas_poll.exit

if.end.2.i:                                       ; preds = %do.cond.1.i
  %11 = ptrtoint ptr %bval.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bval.i, align 2
  %13 = and i16 %12, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not.2.i = icmp eq i16 %13, 0
  br i1 %tobool2.not.2.i, label %do.cond.2.i, label %if.end.2.i.if.end_crit_edge

if.end.2.i.if.end_crit_edge:                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.2.i:                                      ; preds = %if.end.2.i
  %call5.2.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %14 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %bval.i, align 2, !annotation !99
  %call.3.i = call fastcc i32 @scd4x_read(ptr noundef %state, i32 noundef 58552, ptr noundef nonnull %bval.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %do.cond.2.i.scd4x_wait_meas_poll.exit_crit_edge

do.cond.2.i.scd4x_wait_meas_poll.exit_crit_edge:  ; preds = %do.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_wait_meas_poll.exit

if.end.3.i:                                       ; preds = %do.cond.2.i
  %15 = ptrtoint ptr %bval.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bval.i, align 2
  %17 = and i16 %16, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool2.not.3.i = icmp eq i16 %17, 0
  br i1 %tobool2.not.3.i, label %do.cond.3.i, label %if.end.3.i.if.end_crit_edge

if.end.3.i.if.end_crit_edge:                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.3.i:                                      ; preds = %if.end.3.i
  %call5.3.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %18 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %bval.i, align 2, !annotation !99
  %call.4.i = call fastcc i32 @scd4x_read(ptr noundef %state, i32 noundef 58552, ptr noundef nonnull %bval.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %do.cond.3.i.scd4x_wait_meas_poll.exit_crit_edge

do.cond.3.i.scd4x_wait_meas_poll.exit_crit_edge:  ; preds = %do.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_wait_meas_poll.exit

if.end.4.i:                                       ; preds = %do.cond.3.i
  %19 = ptrtoint ptr %bval.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bval.i, align 2
  %21 = and i16 %20, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool2.not.4.i = icmp eq i16 %21, 0
  br i1 %tobool2.not.4.i, label %do.cond.4.i, label %if.end.4.i.if.end_crit_edge

if.end.4.i.if.end_crit_edge:                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.4.i:                                      ; preds = %if.end.4.i
  %call5.4.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %22 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %bval.i, align 2, !annotation !99
  %call.5.i = call fastcc i32 @scd4x_read(ptr noundef %state, i32 noundef 58552, ptr noundef nonnull %bval.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.5.i, label %do.cond.4.i.scd4x_wait_meas_poll.exit_crit_edge

do.cond.4.i.scd4x_wait_meas_poll.exit_crit_edge:  ; preds = %do.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_wait_meas_poll.exit

if.end.5.i:                                       ; preds = %do.cond.4.i
  %23 = ptrtoint ptr %bval.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bval.i, align 2
  %25 = and i16 %24, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool2.not.5.i = icmp eq i16 %25, 0
  br i1 %tobool2.not.5.i, label %do.cond.5.i, label %if.end.5.i.if.end_crit_edge

if.end.5.i.if.end_crit_edge:                      ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.5.i:                                      ; preds = %if.end.5.i
  %call5.5.i = tail call i32 @msleep_interruptible(i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 8625, ptr %buf.i.i, align 2
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 4
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %buf.i.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.cond.5.i.do.end13.i_crit_edge, label %if.end.i.i.i

do.cond.5.i.do.end13.i_crit_edge:                 ; preds = %do.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

if.end.i.i.i:                                     ; preds = %do.cond.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp2.not.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  br i1 %cmp2.not.i.i.i, label %scd4x_send_command.exit.i, label %if.end.i.i.i.do.end13.i_crit_edge

if.end.i.i.i.do.end13.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

scd4x_send_command.exit.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %cleanup

do.end13.i:                                       ; preds = %if.end.i.i.i.do.end13.i_crit_edge, %do.cond.5.i.do.end13.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i.i, %do.cond.5.i.do.end13.i_crit_edge ], [ -5, %if.end.i.i.i.do.end13.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.ph.i) #9
  br label %cleanup

scd4x_wait_meas_poll.exit:                        ; preds = %do.cond.4.i.scd4x_wait_meas_poll.exit_crit_edge, %do.cond.3.i.scd4x_wait_meas_poll.exit_crit_edge, %do.cond.2.i.scd4x_wait_meas_poll.exit_crit_edge, %do.cond.1.i.scd4x_wait_meas_poll.exit_crit_edge, %do.cond.i.scd4x_wait_meas_poll.exit_crit_edge, %entry.scd4x_wait_meas_poll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.5.i.if.end_crit_edge, %if.end.4.i.if.end_crit_edge, %if.end.3.i.if.end_crit_edge, %if.end.2.i.if.end_crit_edge, %if.end.1.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #6
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %buf.i, align 2, !annotation !99
  %30 = getelementptr inbounds [3 x i16], ptr %buf.i, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %30, align 2, !annotation !99
  %32 = getelementptr inbounds [3 x i16], ptr %buf.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %32, align 2, !annotation !99
  %call.i4 = call fastcc i32 @scd4x_read(ptr noundef %state, i32 noundef 60421, ptr noundef nonnull %buf.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %for.body.preheader.i, label %if.end.scd4x_read_meas.exit_crit_edge

if.end.scd4x_read_meas.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_read_meas.exit

for.body.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %34 = call ptr @memcpy(ptr %buf, ptr %buf.i, i32 6)
  br label %scd4x_read_meas.exit

scd4x_read_meas.exit:                             ; preds = %for.body.preheader.i, %if.end.scd4x_read_meas.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %scd4x_read_meas.exit, %scd4x_wait_meas_poll.exit, %do.end13.i, %scd4x_send_command.exit.i
  %retval.0 = phi i32 [ %call.i4, %scd4x_read_meas.exit ], [ -5, %scd4x_wait_meas_poll.exit ], [ -110, %do.end13.i ], [ -110, %scd4x_send_command.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd4x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16262, ptr %buf.i, align 2
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.scd4x_send_command.exit.thread_crit_edge, label %if.end.i.i

entry.scd4x_send_command.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit.thread

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp2.not.i.i, label %if.end, label %if.end.i.i.scd4x_send_command.exit.thread_crit_edge

if.end.i.i.scd4x_send_command.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scd4x_send_command.exit.thread

scd4x_send_command.exit.thread:                   ; preds = %if.end.i.i.scd4x_send_command.exit.thread_crit_edge, %entry.scd4x_send_command.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %entry.scd4x_send_command.exit.thread_crit_edge ], [ -5, %if.end.i.i.scd4x_send_command.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %vdd = getelementptr inbounds %struct.scd4x_state, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdd, align 4
  %call3 = call i32 @regulator_disable(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %scd4x_send_command.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %retval.0.i.ph, %scd4x_send_command.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scd4x_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vdd = getelementptr inbounds %struct.scd4x_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8625, ptr %buf.i, align 2
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i.i, 2
  %spec.select = select i1 %cmp2.not.i.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_scd4x__288_692_scd4x_i2c_driver_init6, !1, !"__initcall__kmod_scd4x__288_692_scd4x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/chemical/scd4x.c", i32 692, i32 1}
!2 = !{ptr @__exitcall_scd4x_i2c_driver_exit, !1, !"__exitcall_scd4x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/chemical/scd4x.c", i32 694, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/chemical/scd4x.c", i32 695, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/chemical/scd4x.c", i32 696, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/chemical/scd4x.c", i32 686, i32 11}
!12 = !{ptr @scd4x_i2c_driver, !13, !"scd4x_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/chemical/scd4x.c", i32 684, i32 26}
!14 = !{ptr @scd4x_probe.scd4x_scan_masks, !15, !"scd4x_scan_masks", i1 false, i1 false}
!15 = !{!"../drivers/iio/chemical/scd4x.c", i32 617, i32 29}
!16 = !{ptr @scd4x_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/chemical/scd4x.c", i32 628, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/chemical/scd4x.c", i32 639, i32 39}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/chemical/scd4x.c", i32 641, i32 50}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/chemical/scd4x.c", i32 653, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @scd4x_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @scd4x_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/chemical/scd4x.c", i32 666, i32 3}
!33 = !{ptr @scd4x_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @scd4x_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @scd4x_crc8_table, !36, !"scd4x_crc8_table", i1 false, i1 false}
!36 = !{!"../drivers/iio/chemical/scd4x.c", i32 67, i32 1}
!37 = !{ptr @scd4x_info, !38, !"scd4x_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/chemical/scd4x.c", i32 499, i32 30}
!39 = !{ptr @scd4x_attr_group, !40, !"scd4x_attr_group", i1 false, i1 false}
!40 = !{!"../drivers/iio/chemical/scd4x.c", i32 495, i32 37}
!41 = !{ptr @scd4x_attrs, !42, !"scd4x_attrs", i1 false, i1 false}
!42 = !{!"../drivers/iio/chemical/scd4x.c", i32 488, i32 26}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/chemical/scd4x.c", i32 482, i32 8}
!45 = !{ptr @iio_dev_attr_calibration_auto_enable, !44, !"iio_dev_attr_calibration_auto_enable", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/chemical/scd4x.c", i32 420, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @calibration_auto_enable_show._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @calibration_auto_enable_show._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/chemical/scd4x.c", i32 426, i32 22}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/chemical/scd4x.c", i32 160, i32 4}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @scd4x_read._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @scd4x_read._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/chemical/scd4x.c", i32 449, i32 3}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @calibration_auto_enable_store._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @calibration_auto_enable_store._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/chemical/scd4x.c", i32 483, i32 8}
!65 = !{ptr @iio_dev_attr_calibration_forced_value, !64, !"iio_dev_attr_calibration_forced_value", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/chemical/scd4x.c", i32 475, i32 3}
!68 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @calibration_forced_value_store._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @calibration_forced_value_store._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/chemical/scd4x.c", i32 242, i32 4}
!73 = !{ptr @scd4x_write_and_fetch._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @scd4x_write_and_fetch._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/chemical/scd4x.c", i32 485, i32 8}
!77 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @iio_const_attr_calibration_forced_value_available, !76, !"iio_const_attr_calibration_forced_value_available", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/chemical/scd4x.c", i32 303, i32 3}
!81 = !{ptr @scd4x_wait_meas_poll._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @scd4x_wait_meas_poll._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @scd4x_channels, !84, !"scd4x_channels", i1 false, i1 false}
!84 = !{!"../drivers/iio/chemical/scd4x.c", i32 505, i32 35}
!85 = !{ptr @scd4x_dt_ids, !86, !"scd4x_dt_ids", i1 false, i1 false}
!86 = !{!"../drivers/iio/chemical/scd4x.c", i32 677, i32 34}
!87 = !{ptr @scd4x_pm_ops, !88, !"scd4x_pm_ops", i1 false, i1 false}
!88 = !{!"../drivers/iio/chemical/scd4x.c", i32 577, i32 23}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i8 0, i8 2}
!99 = !{!"auto-init"}
