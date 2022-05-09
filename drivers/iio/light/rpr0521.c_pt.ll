; ModuleID = '/llk/IR_all_yes/drivers/iio/light/rpr0521.c_pt.bc'
source_filename = "../drivers/iio/light/rpr0521.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.rpr0521_reg_desc = type { i8, i8 }
%struct.rpr0521_gain_info = type { i8, i8, i8, ptr, i32 }
%struct.rpr0521_gain = type { i32, i32 }
%struct.rpr0521_samp_freq = type { i32, i32, i32, i32 }
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
%struct.rpr0521_data = type { ptr, %struct.mutex, i8, i8, ptr, i64, i8, i8, i8, i8, ptr, %struct.anon.87 }
%struct.anon.87 = type { [3 x i16], i8, i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_rpr0521__289_1135_rpr0521_driver_init6 = internal global ptr @rpr0521_driver_init, section ".initcall6.init", align 4
@rpr0521_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rpr0521_probe, ptr @rpr0521_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpr0521_pm_ops, ptr null, ptr null }, ptr @rpr0521_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rpr0521_driver_exit = internal global ptr @rpr0521_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [55 x i8] c"rpr0521.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [75 x i8] c"rpr0521.description=RPR0521 ROHM Ambient Light and Proximity Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [39 x i8] c"rpr0521.file=drivers/iio/light/rpr0521\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"rpr0521.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RPR0521\00", [24 x i8] zeroinitializer }, align 32
@rpr0521_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpr0521_runtime_suspend, ptr @rpr0521_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rpr0521_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rpr0521\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rpr0521_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rpr0521_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.22, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rpr0521_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 146, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rpr0521:942:(&rpr0521_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 944, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regmap_init failed!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rpr0521_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/rpr0521.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry_ptr = internal global ptr @rpr0521_probe._entry, section ".printk_index", align 4
@rpr0521_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@rpr0521_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @rpr0521_attribute_group, ptr @rpr0521_read_raw, ptr null, ptr null, ptr @rpr0521_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rpr0521_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 12, i32 1, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 2, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 963, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rpr0521 chip init failed\0A\00", [38 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry_ptr.10 = internal global ptr @rpr0521_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@rpr0521_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @rpr0521_pxs_drdy_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@rpr0521_available_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rpr0521_event\00", [18 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1001, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"request irq %d for trigger0 failed\0A\00", [60 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry_ptr.15 = internal global ptr @rpr0521_probe._entry.13, section ".printk_index", align 4
@rpr0521_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1008, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iio trigger register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry_ptr.18 = internal global ptr @rpr0521_probe._entry.16, section ".printk_index", align 4
@rpr0521_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @rpr0521_buffer_preenable, ptr null, ptr null, ptr @rpr0521_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1024, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@rpr0521_probe._entry_ptr.21 = internal global ptr @rpr0521_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rpr0521_regmap\00", [17 x i8] zeroinitializer }, align 32
@rpr0521_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rpr0521_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@rpr0521_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_intensity_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_proximity_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [16 x i8] zeroinitializer }, align 32
@iio_const_attr_in_intensity_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.23, %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_proximity_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.25, %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.27, %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0.007812 0.015625 0.5 1\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_intensity_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0.125 0.5 1\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_proximity_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.5 10\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@rpr0521_data_reg = internal constant { [3 x %struct.rpr0521_reg_desc], [26 x i8] } { [3 x %struct.rpr0521_reg_desc] [%struct.rpr0521_reg_desc { i8 68, i8 64 }, %struct.rpr0521_reg_desc { i8 70, i8 -128 }, %struct.rpr0521_reg_desc { i8 72, i8 -128 }], [26 x i8] zeroinitializer }, align 32
@rpr0521_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed: rpr0521_set_power_state for %d, ret %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rpr0521_set_power_state\00", [40 x i8] zeroinitializer }, align 32
@rpr0521_set_power_state._entry_ptr = internal global ptr @rpr0521_set_power_state._entry, section ".printk_index", align 4
@rpr0521_gain = internal constant { [3 x %struct.rpr0521_gain_info], [60 x i8] } { [3 x %struct.rpr0521_gain_info] [%struct.rpr0521_gain_info { i8 67, i8 48, i8 4, ptr @rpr0521_pxs_gain, i32 3 }, %struct.rpr0521_gain_info { i8 66, i8 48, i8 4, ptr @rpr0521_als_gain, i32 4 }, %struct.rpr0521_gain_info { i8 66, i8 12, i8 2, ptr @rpr0521_als_gain, i32 4 }], [60 x i8] zeroinitializer }, align 32
@rpr0521_pxs_gain = internal constant { [3 x %struct.rpr0521_gain], [40 x i8] } { [3 x %struct.rpr0521_gain] [%struct.rpr0521_gain { i32 1, i32 0 }, %struct.rpr0521_gain { i32 0, i32 500000 }, %struct.rpr0521_gain { i32 0, i32 125000 }], [40 x i8] zeroinitializer }, align 32
@rpr0521_als_gain = internal constant { [4 x %struct.rpr0521_gain], [32 x i8] } { [4 x %struct.rpr0521_gain] [%struct.rpr0521_gain { i32 1, i32 0 }, %struct.rpr0521_gain { i32 0, i32 500000 }, %struct.rpr0521_gain { i32 0, i32 15625 }, %struct.rpr0521_gain { i32 0, i32 7812 }], [32 x i8] zeroinitializer }, align 32
@rpr0521_samp_freq_i = internal constant { [13 x %struct.rpr0521_samp_freq], [48 x i8] } { [13 x %struct.rpr0521_samp_freq] [%struct.rpr0521_samp_freq zeroinitializer, %struct.rpr0521_samp_freq { i32 0, i32 0, i32 100, i32 0 }, %struct.rpr0521_samp_freq { i32 0, i32 0, i32 25, i32 0 }, %struct.rpr0521_samp_freq { i32 0, i32 0, i32 10, i32 0 }, %struct.rpr0521_samp_freq { i32 0, i32 0, i32 2, i32 500000 }, %struct.rpr0521_samp_freq { i32 10, i32 0, i32 20, i32 0 }, %struct.rpr0521_samp_freq { i32 10, i32 0, i32 10, i32 0 }, %struct.rpr0521_samp_freq { i32 10, i32 0, i32 2, i32 500000 }, %struct.rpr0521_samp_freq { i32 2, i32 500000, i32 20, i32 0 }, %struct.rpr0521_samp_freq { i32 2, i32 500000, i32 10, i32 0 }, %struct.rpr0521_samp_freq { i32 2, i32 500000, i32 0, i32 0 }, %struct.rpr0521_samp_freq { i32 2, i32 500000, i32 2, i32 500000 }, %struct.rpr0521_samp_freq { i32 20, i32 0, i32 20, i32 0 }], [48 x i8] zeroinitializer }, align 32
@rpr0521_read_ps_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read PS OFFSET register\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rpr0521_read_ps_offset\00", [41 x i8] zeroinitializer }, align 32
@rpr0521_read_ps_offset._entry_ptr = internal global ptr @rpr0521_read_ps_offset._entry, section ".printk_index", align 4
@rpr0521_write_ps_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 712, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write PS OFFSET register\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rpr0521_write_ps_offset\00", [40 x i8] zeroinitializer }, align 32
@rpr0521_write_ps_offset._entry_ptr = internal global ptr @rpr0521_write_ps_offset._entry, section ".printk_index", align 4
@rpr0521_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 845, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read REG_ID register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpr0521_init\00", [19 x i8] zeroinitializer }, align 32
@rpr0521_init._entry_ptr = internal global ptr @rpr0521_init._entry, section ".printk_index", align 4
@rpr0521_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 851, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Wrong id, got %x, expected %x\0A\00", [33 x i8] zeroinitializer }, align 32
@rpr0521_init._entry_ptr.39 = internal global ptr @rpr0521_init._entry.37, section ".printk_index", align 4
@rpr0521_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.4, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013regmap_update_bits returned %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rpr0521_init._entry_ptr.42 = internal global ptr @rpr0521_init._entry.40, section ".printk_index", align 4
@rpr0521_pxs_drdy_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 537, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rpr0521_pxs_drdy_set_state failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rpr0521_pxs_drdy_set_state\00", [37 x i8] zeroinitializer }, align 32
@rpr0521_pxs_drdy_set_state._entry_ptr = internal global ptr @rpr0521_pxs_drdy_set_state._entry, section ".printk_index", align 4
@rpr0521_write_int_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 494, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PS control reg write fail.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rpr0521_write_int_enable\00", [39 x i8] zeroinitializer }, align 32
@rpr0521_write_int_enable._entry_ptr = internal global ptr @rpr0521_write_int_enable._entry, section ".printk_index", align 4
@rpr0521_write_int_enable._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Interrupt setup write fail.\0A\00", [35 x i8] zeroinitializer }, align 32
@rpr0521_write_int_enable._entry_ptr.49 = internal global ptr @rpr0521_write_int_enable._entry.47, section ".printk_index", align 4
@rpr0521_trigger_consumer_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Trigger consumer can't read from sensor.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rpr0521_trigger_consumer_handler\00", [63 x i8] zeroinitializer }, align 32
@rpr0521_trigger_consumer_handler._entry_ptr = internal global ptr @rpr0521_trigger_consumer_handler._entry, section ".printk_index", align 4
@rpr0521_buffer_preenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 557, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_buffer_preenable fail\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rpr0521_buffer_preenable\00", [39 x i8] zeroinitializer }, align 32
@rpr0521_buffer_preenable._entry_ptr = internal global ptr @rpr0521_buffer_preenable._entry, section ".printk_index", align 4
@rpr0521_buffer_postdisable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_buffer_postdisable fail\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rpr0521_buffer_postdisable\00", [37 x i8] zeroinitializer }, align 32
@rpr0521_buffer_postdisable._entry_ptr = internal global ptr @rpr0521_buffer_postdisable._entry, section ".printk_index", align 4
@rpr0521_poweroff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 900, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to reset int pin.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rpr0521_poweroff\00", [47 x i8] zeroinitializer }, align 32
@rpr0521_poweroff._entry_ptr = internal global ptr @rpr0521_poweroff._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 10]
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"rpr0521_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1124, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1126, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"rpr0521_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1106, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"rpr0521_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1117, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"rpr0521_regmap_config\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 919, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 942, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 944, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 953, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"rpr0521_info\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 832, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"rpr0521_channels\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 243, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 963, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 985, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"rpr0521_trigger_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 542, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [29 x i8] c"rpr0521_available_scan_masks\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 237, i32 28 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 998, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1000, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1008, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"rpr0521_buffer_setup_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 577, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1024, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 920, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [24 x i8] c"rpr0521_attribute_group\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 226, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"rpr0521_attributes\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 219, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant [44 x i8] c"iio_const_attr_in_intensity_scale_available\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [44 x i8] c"iio_const_attr_in_proximity_scale_available\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 210, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 211, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 217, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"rpr0521_data_reg\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 108, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 369, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"rpr0521_gain\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 129, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"rpr0521_pxs_gain\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 91, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"rpr0521_als_gain\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 84, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c"rpr0521_samp_freq_i\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 160, i32 39 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 694, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 712, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 845, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 850, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 860, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 537, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 494, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 505, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 476, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 557, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 572, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [31 x i8] c"../drivers/iio/light/rpr0521.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 900, i32 3 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_rpr0521_driver_exit, ptr @__initcall__kmod_rpr0521__289_1135_rpr0521_driver_init6, ptr @rpr0521_buffer_postdisable._entry, ptr @rpr0521_buffer_postdisable._entry_ptr, ptr @rpr0521_buffer_preenable._entry, ptr @rpr0521_buffer_preenable._entry_ptr, ptr @rpr0521_driver_exit, ptr @rpr0521_init._entry, ptr @rpr0521_init._entry.37, ptr @rpr0521_init._entry.40, ptr @rpr0521_init._entry_ptr, ptr @rpr0521_init._entry_ptr.39, ptr @rpr0521_init._entry_ptr.42, ptr @rpr0521_poweroff._entry, ptr @rpr0521_poweroff._entry_ptr, ptr @rpr0521_probe._entry, ptr @rpr0521_probe._entry.13, ptr @rpr0521_probe._entry.16, ptr @rpr0521_probe._entry.19, ptr @rpr0521_probe._entry.8, ptr @rpr0521_probe._entry_ptr, ptr @rpr0521_probe._entry_ptr.10, ptr @rpr0521_probe._entry_ptr.15, ptr @rpr0521_probe._entry_ptr.18, ptr @rpr0521_probe._entry_ptr.21, ptr @rpr0521_pxs_drdy_set_state._entry, ptr @rpr0521_pxs_drdy_set_state._entry_ptr, ptr @rpr0521_read_ps_offset._entry, ptr @rpr0521_read_ps_offset._entry_ptr, ptr @rpr0521_set_power_state._entry, ptr @rpr0521_set_power_state._entry_ptr, ptr @rpr0521_trigger_consumer_handler._entry, ptr @rpr0521_trigger_consumer_handler._entry_ptr, ptr @rpr0521_write_int_enable._entry, ptr @rpr0521_write_int_enable._entry.47, ptr @rpr0521_write_int_enable._entry_ptr, ptr @rpr0521_write_int_enable._entry_ptr.49, ptr @rpr0521_write_ps_offset._entry, ptr @rpr0521_write_ps_offset._entry_ptr, ptr @rpr0521_driver, ptr @.str, ptr @rpr0521_pm_ops, ptr @rpr0521_id, ptr @rpr0521_probe._key, ptr @rpr0521_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rpr0521_probe.__key, ptr @.str.7, ptr @rpr0521_info, ptr @rpr0521_channels, ptr @.str.9, ptr @.str.11, ptr @rpr0521_trigger_ops, ptr @rpr0521_available_scan_masks, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @rpr0521_buffer_setup_ops, ptr @.str.20, ptr @.str.22, ptr @rpr0521_attribute_group, ptr @rpr0521_attributes, ptr @iio_const_attr_in_intensity_scale_available, ptr @iio_const_attr_in_proximity_scale_available, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @rpr0521_data_reg, ptr @.str.29, ptr @.str.30, ptr @rpr0521_gain, ptr @rpr0521_pxs_gain, ptr @rpr0521_als_gain, ptr @rpr0521_samp_freq_i, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_available_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_intensity_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_proximity_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_data_reg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_gain to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_pxs_gain to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_als_gain to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_samp_freq_i to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_read_ps_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_write_ps_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_pxs_drdy_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_write_int_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_write_int_enable._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_trigger_consumer_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_buffer_preenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_buffer_postdisable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpr0521_poweroff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rpr0521_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpr0521_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @rpr0521_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 136) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @rpr0521_regmap_config, ptr noundef nonnull @rpr0521_probe._key, ptr noundef nonnull @.str.1) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %2, align 8
  %regmap9 = getelementptr inbounds %struct.rpr0521_data, ptr %2, i32 0, i32 10
  %5 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %regmap9, align 4
  %lock = getelementptr inbounds %struct.rpr0521_data, ptr %2, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @rpr0521_probe.__key) #8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rpr0521_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rpr0521_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %num_channels, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #8
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %id.i, align 4, !annotation !163
  %12 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap9, align 4
  %call.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 146, ptr noundef nonnull %id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i137 = icmp slt i32 %call.i, 0
  br i1 %cmp.i137, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35) #11
  br label %rpr0521_init.exit.thread

if.end.i:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %17)
  %cmp1.not.i = icmp eq i32 %17, 224
  br i1 %cmp1.not.i, label %if.end8.i, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 8
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.38, i32 noundef %17, i32 noundef 224) #11
  br label %rpr0521_init.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap9, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 65, i32 noundef 15, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %rpr0521_init.exit.thread152, label %rpr0521_init.exit

rpr0521_init.exit.thread152:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_timestamp.i = getelementptr inbounds %struct.rpr0521_data, ptr %2, i32 0, i32 5
  %22 = ptrtoint ptr %irq_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %irq_timestamp.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #8
  br label %if.end19

rpr0521_init.exit.thread:                         ; preds = %do.end5.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end5.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #8
  br label %do.end17

rpr0521_init.exit:                                ; preds = %if.end8.i
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %rpr0521_init.exit.do.end17_crit_edge, label %rpr0521_init.exit.if.end19_crit_edge

rpr0521_init.exit.if.end19_crit_edge:             ; preds = %rpr0521_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

rpr0521_init.exit.do.end17_crit_edge:             ; preds = %rpr0521_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end17:                                         ; preds = %rpr0521_init.exit.do.end17_crit_edge, %rpr0521_init.exit.thread
  %retval.0.i151 = phi i32 [ %retval.0.i.ph, %rpr0521_init.exit.thread ], [ %call.i.i, %rpr0521_init.exit.do.end17_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end19:                                         ; preds = %rpr0521_init.exit.if.end19_crit_edge, %rpr0521_init.exit.thread152
  %call.i138 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp22 = icmp slt i32 %call.i138, 0
  br i1 %cmp22, label %if.end19.err_poweroff_crit_edge, label %if.end24

if.end19.err_poweroff_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_poweroff

if.end24:                                         ; preds = %if.end19
  call void @pm_runtime_enable(ptr noundef %dev) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool28.not = icmp eq i32 %24, 0
  br i1 %tobool28.not, label %if.end24.if.end72_crit_edge, label %if.then29

if.end24.if.end72_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then29:                                        ; preds = %if.end24
  %parent = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %call32 = call i32 @iio_device_id(ptr noundef nonnull %call) #8
  %call33 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %26, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %call32) #8
  %drdy_trigger0 = getelementptr inbounds %struct.rpr0521_data, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %drdy_trigger0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call33, ptr %drdy_trigger0, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %if.then29.err_pm_disable_crit_edge, label %if.end37

if.then29.err_pm_disable_crit_edge:               ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pm_disable

if.end37:                                         ; preds = %if.then29
  %30 = ptrtoint ptr %call33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @rpr0521_trigger_ops, ptr %call33, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %31 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rpr0521_available_scan_masks, ptr %available_scan_masks, align 4
  %32 = ptrtoint ptr %drdy_trigger0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drdy_trigger0, align 4
  %driver_data.i.i139 = getelementptr inbounds %struct.iio_trigger, ptr %33, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i139 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %driver_data.i.i139, align 4
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call42 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %36, ptr noundef nonnull @rpr0521_drdy_irq_handler, ptr noundef nonnull @rpr0521_drdy_irq_thread, i32 noundef 8194, ptr noundef nonnull @.str.12, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %38) #11
  br label %err_pm_disable

if.end50:                                         ; preds = %if.end37
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent, align 8
  %41 = ptrtoint ptr %drdy_trigger0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %drdy_trigger0, align 4
  %call54 = call i32 @__devm_iio_trigger_register(ptr noundef %40, ptr noundef %42, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %err_pm_disable

if.end61:                                         ; preds = %if.end50
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent, align 8
  %call64 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %44, ptr noundef nonnull %call, ptr noundef nonnull @rpr0521_trigger_consumer_store_time, ptr noundef nonnull @rpr0521_trigger_consumer_handler, i32 noundef 0, ptr noundef nonnull @rpr0521_buffer_setup_ops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %do.end69, label %if.end61.if.end72_crit_edge

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  br label %err_pm_disable

if.end72:                                         ; preds = %if.end61.if.end72_crit_edge, %if.end24.if.end72_crit_edge
  %call73 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.end72.err_pm_disable_crit_edge

if.end72.err_pm_disable_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pm_disable

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_pm_disable:                                   ; preds = %if.end72.err_pm_disable_crit_edge, %do.end69, %do.end59, %do.end47, %if.then29.err_pm_disable_crit_edge
  %ret.0 = phi i32 [ %call42, %do.end47 ], [ %call54, %do.end59 ], [ %call64, %do.end69 ], [ %call73, %if.end72.err_pm_disable_crit_edge ], [ -12, %if.then29.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i140 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  br label %err_poweroff

err_poweroff:                                     ; preds = %err_pm_disable, %if.end19.err_poweroff_crit_edge
  %ret.1 = phi i32 [ %call.i138, %if.end19.err_poweroff_crit_edge ], [ %ret.0, %err_pm_disable ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %45 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %tmp.i, align 4, !annotation !163
  %46 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap9, align 4
  %call.i.i142 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 65, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp.i143 = icmp slt i32 %call.i.i142, 0
  br i1 %cmp.i143, label %err_poweroff.rpr0521_poweroff.exit_crit_edge, label %if.end.i145

err_poweroff.rpr0521_poweroff.exit_crit_edge:     ; preds = %err_poweroff
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_poweroff.exit

if.end.i145:                                      ; preds = %err_poweroff
  %als_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %2, i32 0, i32 2
  %48 = ptrtoint ptr %als_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %als_dev_en.i, align 8
  %pxs_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %2, i32 0, i32 3
  %49 = ptrtoint ptr %pxs_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %pxs_dev_en.i, align 1
  %50 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap9, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %51, i32 noundef 74, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i144 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i144, label %if.end.i145.rpr0521_poweroff.exit_crit_edge, label %do.end.i147

if.end.i145.rpr0521_poweroff.exit_crit_edge:      ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_poweroff.exit

do.end.i147:                                      ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %2, align 8
  %dev.i146 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i146, ptr noundef nonnull @.str.56) #11
  br label %rpr0521_poweroff.exit

rpr0521_poweroff.exit:                            ; preds = %do.end.i147, %if.end.i145.rpr0521_poweroff.exit_crit_edge, %err_poweroff.rpr0521_poweroff.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %cleanup

cleanup:                                          ; preds = %rpr0521_poweroff.exit, %if.end72.cleanup_crit_edge, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %retval.0.i151, %do.end17 ], [ %ret.1, %rpr0521_poweroff.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_remove(ptr noundef %client) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp.i, align 4, !annotation !163
  %regmap.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 65, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.rpr0521_poweroff.exit_crit_edge, label %if.end.i

entry.rpr0521_poweroff.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_poweroff.exit

if.end.i:                                         ; preds = %entry
  %als_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %als_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %als_dev_en.i, align 8
  %pxs_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %pxs_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pxs_dev_en.i, align 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 74, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.rpr0521_poweroff.exit_crit_edge, label %do.end.i

if.end.i.rpr0521_poweroff.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_poweroff.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.56) #11
  br label %rpr0521_poweroff.exit

rpr0521_poweroff.exit:                            ; preds = %do.end.i, %if.end.i.rpr0521_poweroff.exit_crit_edge, %entry.rpr0521_poweroff.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_drdy_irq_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #8
  %irq_timestamp = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call1, ptr %irq_timestamp, align 8
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_drdy_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #8
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !163
  %regmap.i = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 74, ptr noundef nonnull %reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %rpr0521_is_triggered.exit.thread, label %rpr0521_is_triggered.exit

rpr0521_is_triggered.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  br label %cleanup

rpr0521_is_triggered.exit:                        ; preds = %entry
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %6, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  br i1 %tobool.not.i.not, label %rpr0521_is_triggered.exit.cleanup_crit_edge, label %if.then

rpr0521_is_triggered.exit.cleanup_crit_edge:      ; preds = %rpr0521_is_triggered.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %rpr0521_is_triggered.exit
  call void @__sanitizer_cov_trace_pc() #10
  %drdy_trigger0 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %drdy_trigger0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drdy_trigger0, align 4
  call void @iio_trigger_poll_chained(ptr noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %rpr0521_is_triggered.exit.cleanup_crit_edge, %rpr0521_is_triggered.exit.thread
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %rpr0521_is_triggered.exit.cleanup_crit_edge ], [ 0, %rpr0521_is_triggered.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_trigger_consumer_store_time(i32 noundef %irq, ptr nocapture noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %call = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %1) #8
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i64 @iio_get_time_ns(ptr noundef %1) #8
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call2, ptr %timestamp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_trigger_consumer_handler(i32 noundef %irq, ptr nocapture noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %1) #8
  br i1 %call2, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %irq_timestamp = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %irq_timestamp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %irq_timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %timestamp, align 8
  %7 = ptrtoint ptr %irq_timestamp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %irq_timestamp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %timestamp5 = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %8 = ptrtoint ptr %timestamp5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timestamp5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool6.not = icmp eq i64 %9, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i64 @iio_get_time_ns(ptr noundef %1) #8
  %10 = ptrtoint ptr %timestamp5 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call8, ptr %timestamp5, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %regmap = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %scan = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 11
  %call11 = tail call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 68, ptr noundef %scan, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %do.end

if.then13:                                        ; preds = %if.end10
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %scan_timestamp.i, align 8, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then13.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then13.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %timestamp5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %timestamp5, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %18, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %16, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then13.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #8
  br label %if.end17

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end, %iio_push_to_buffers_with_timestamp.exit
  %22 = ptrtoint ptr %timestamp5 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %timestamp5, align 8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %24) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rpr0521_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -68
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %0)
  %switch = icmp ult i32 %0, -3
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buffer.i = alloca i16, align 2
  %reg.i93 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %raw_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_data) #8
  %2 = ptrtoint ptr %raw_data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %raw_data, align 2, !annotation !163
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb27
    i32 12, label %sw.bb36
    i32 3, label %sw.bb45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %.off = add i32 %5, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call3 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %device_mask6 = getelementptr [3 x %struct.rpr0521_reg_desc], ptr @rpr0521_data_reg, i32 0, i32 %7, i32 1
  %8 = ptrtoint ptr %device_mask6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %device_mask6, align 1
  %lock = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call7 = tail call fastcc i32 @rpr0521_set_power_state(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.rpr0521_read_raw_out_crit_edge, label %if.end10

if.end5.rpr0521_read_raw_out_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_read_raw_out

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %address, align 4
  %arrayidx12 = getelementptr [3 x %struct.rpr0521_reg_desc], ptr @rpr0521_data_reg, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %conv = zext i8 %15 to i32
  %call14 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %conv, ptr noundef nonnull %raw_data, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  %call18 = call fastcc i32 @rpr0521_set_power_state(ptr noundef %1, i1 noundef zeroext false, i8 noundef zeroext %9)
  %call14.call18 = select i1 %cmp15, i32 %call14, i32 %call18
  br label %rpr0521_read_raw_out

rpr0521_read_raw_out:                             ; preds = %if.end10, %if.end5.rpr0521_read_raw_out_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end5.rpr0521_read_raw_out_crit_edge ], [ %call14.call18, %if.end10 ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp22 = icmp slt i32 %ret.0, 0
  br i1 %cmp22, label %rpr0521_read_raw_out.cleanup_crit_edge, label %if.end25

rpr0521_read_raw_out.cleanup_crit_edge:           ; preds = %rpr0521_read_raw_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %rpr0521_read_raw_out
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %raw_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %raw_data, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %conv26 = zext i16 %18 to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv26, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %lock28 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock28, i32 noundef 0) #8
  %address29 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %20 = ptrtoint ptr %address29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %address29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #8
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %reg.i, align 4, !annotation !163
  %regmap.i = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %arrayidx.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %21
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %26 to i32
  %call.i = call i32 @regmap_read(ptr noundef %24, i32 noundef %conv.i, ptr noundef nonnull %reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %41, label %rpr0521_get_gain.exit

rpr0521_get_gain.exit:                            ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %mask.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %21, i32 1
  %27 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mask.i, align 1
  %conv4.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %30, %conv4.i
  %shift.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %21, i32 2
  %31 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %shift.i, align 2
  %conv6.i = zext i8 %32 to i32
  %shr.i = lshr i32 %and.i, %conv6.i
  %gain.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %21, i32 3
  %33 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gain.i, align 4
  %arrayidx8.i = getelementptr %struct.rpr0521_gain, ptr %34, i32 %shr.i
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx8.i, align 4
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val, align 4
  %uscale.i = getelementptr %struct.rpr0521_gain, ptr %34, i32 %shr.i, i32 1
  %38 = ptrtoint ptr %uscale.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %uscale.i, align 4
  %40 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  call void @mutex_unlock(ptr noundef %lock28) #8
  br label %cleanup

41:                                               ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  call void @mutex_unlock(ptr noundef %lock28) #8
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  %lock37 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock37, i32 noundef 0) #8
  %42 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i93) #8
  %44 = ptrtoint ptr %reg.i93 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %reg.i93, align 4, !annotation !163
  %regmap.i94 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %regmap.i94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i94, align 4
  %call.i95 = call i32 @regmap_read(ptr noundef %46, i32 noundef 65, ptr noundef nonnull %reg.i93) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp.i96 = icmp slt i32 %call.i95, 0
  br i1 %cmp.i96, label %sw.bb36._crit_edge, label %if.end.i98

sw.bb36._crit_edge:                               ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %59

if.end.i98:                                       ; preds = %sw.bb36
  %47 = ptrtoint ptr %reg.i93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg.i93, align 4
  %and.i97 = and i32 %48, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and.i97)
  %cmp1.i = icmp ugt i32 %and.i97, 12
  br i1 %cmp1.i, label %if.end.i98._crit_edge, label %if.end3.i

if.end.i98._crit_edge:                            ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %59

if.end3.i:                                        ; preds = %if.end.i98
  %49 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %43, label %if.end3.i._crit_edge [
    i32 7, label %sw.bb.i
    i32 8, label %sw.bb5.i
  ]

if.end3.i._crit_edge:                             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %59

sw.bb.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i99 = getelementptr [13 x %struct.rpr0521_samp_freq], ptr @rpr0521_samp_freq_i, i32 0, i32 %and.i97
  %50 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i99, align 4
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %val, align 4
  %als_uhz.i = getelementptr [13 x %struct.rpr0521_samp_freq], ptr @rpr0521_samp_freq_i, i32 0, i32 %and.i97, i32 1
  br label %rpr0521_read_samp_freq.exit

sw.bb5.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %pxs_hz.i = getelementptr [13 x %struct.rpr0521_samp_freq], ptr @rpr0521_samp_freq_i, i32 0, i32 %and.i97, i32 2
  %53 = ptrtoint ptr %pxs_hz.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pxs_hz.i, align 4
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val, align 4
  %pxs_uhz.i = getelementptr [13 x %struct.rpr0521_samp_freq], ptr @rpr0521_samp_freq_i, i32 0, i32 %and.i97, i32 3
  br label %rpr0521_read_samp_freq.exit

rpr0521_read_samp_freq.exit:                      ; preds = %sw.bb5.i, %sw.bb.i
  %pxs_uhz.sink.i = phi ptr [ %pxs_uhz.i, %sw.bb5.i ], [ %als_uhz.i, %sw.bb.i ]
  %56 = ptrtoint ptr %pxs_uhz.sink.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pxs_uhz.sink.i, align 4
  %58 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i93) #8
  call void @mutex_unlock(ptr noundef %lock37) #8
  br label %cleanup

59:                                               ; preds = %if.end3.i._crit_edge, %if.end.i98._crit_edge, %sw.bb36._crit_edge
  %retval.0.i100.ph = phi i32 [ -22, %if.end3.i._crit_edge ], [ -22, %if.end.i98._crit_edge ], [ %call.i95, %sw.bb36._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i93) #8
  call void @mutex_unlock(ptr noundef %lock37) #8
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  %lock46 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock46, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #8
  %60 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -1, ptr %buffer.i, align 2, !annotation !163
  %regmap.i101 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 10
  %61 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i101, align 4
  %call.i102 = call i32 @regmap_bulk_read(ptr noundef %62, i32 noundef 83, ptr noundef nonnull %buffer.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.i103 = icmp slt i32 %call.i102, 0
  br i1 %cmp.i103, label %do.end.i, label %if.end.i105

do.end.i:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31) #11
  br label %rpr0521_read_ps_offset.exit

if.end.i105:                                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %buffer.i, align 2
  %67 = call i16 @llvm.bswap.i16(i16 %66) #8
  %conv.i104 = zext i16 %67 to i32
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv.i104, ptr %val, align 4
  br label %rpr0521_read_ps_offset.exit

rpr0521_read_ps_offset.exit:                      ; preds = %if.end.i105, %do.end.i
  %call47. = phi i32 [ %call.i102, %do.end.i ], [ 1, %if.end.i105 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #8
  call void @mutex_unlock(ptr noundef %lock46) #8
  br label %cleanup

cleanup:                                          ; preds = %rpr0521_read_ps_offset.exit, %59, %rpr0521_read_samp_freq.exit, %41, %rpr0521_get_gain.exit, %if.end25, %rpr0521_read_raw_out.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end25 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %ret.0, %rpr0521_read_raw_out.cleanup_crit_edge ], [ %call47., %rpr0521_read_ps_offset.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %41 ], [ 2, %rpr0521_get_gain.exit ], [ %retval.0.i100.ph, %59 ], [ 2, %rpr0521_read_samp_freq.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buffer.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb3
    i32 3, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %size.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %4, i32 4
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %gain.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %4, i32 3
  %7 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gain.i, align 4
  %smax.i = tail call i32 @llvm.smax.i32(i32 %6, i32 1) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %i.033.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.rpr0521_gain, ptr %8, i32 %i.033.i
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp3.i = icmp eq i32 %10, %val
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %uscale.i = getelementptr %struct.rpr0521_gain, ptr %8, i32 %i.033.i, i32 1
  %11 = ptrtoint ptr %uscale.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uscale.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val2)
  %cmp7.i = icmp eq i32 %12, %val2
  br i1 %cmp7.i, label %if.end10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.rpr0521_set_gain.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.rpr0521_set_gain.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_set_gain.exit

if.end10.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.le.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %4
  %regmap.i = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %15 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.le.i, align 4
  %conv.i = zext i8 %16 to i32
  %mask.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %4, i32 1
  %17 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mask.i, align 1
  %conv13.i = zext i8 %18 to i32
  %shift.i = getelementptr [3 x %struct.rpr0521_gain_info], ptr @rpr0521_gain, i32 0, i32 %4, i32 2
  %19 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shift.i, align 2
  %conv15.i = zext i8 %20 to i32
  %shl.i = shl i32 %i.033.i, %conv15.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %conv.i, i32 noundef %conv13.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %rpr0521_set_gain.exit

rpr0521_set_gain.exit:                            ; preds = %if.end10.i, %for.inc.i.rpr0521_set_gain.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end10.i ], [ -22, %for.inc.i.rpr0521_set_gain.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %lock4 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock4, i32 noundef 0) #8
  %21 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %val, label %sw.bb3.rpr0521_write_samp_freq_common.exit_crit_edge [
    i32 0, label %sw.bb3.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 10, label %sw.bb2.i
  ]

sw.bb3.sw.epilog.i_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.rpr0521_write_samp_freq_common.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_write_samp_freq_common.exit

sw.bb1.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp.not.i = icmp eq i32 %val2, 500000
  br i1 %cmp.not.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %sw.bb1.i.rpr0521_write_samp_freq_common.exit_crit_edge

sw.bb1.i.rpr0521_write_samp_freq_common.exit_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_write_samp_freq_common.exit

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i.sw.epilog.i_crit_edge, %sw.bb3.sw.epilog.i_crit_edge
  %i.0.i = phi i32 [ 6, %sw.bb2.i ], [ %val, %sw.bb3.sw.epilog.i_crit_edge ], [ 11, %sw.bb1.i.sw.epilog.i_crit_edge ]
  %regmap.i26 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %regmap.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i26, align 4
  %call.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 65, i32 noundef 15, i32 noundef %i.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %rpr0521_write_samp_freq_common.exit

rpr0521_write_samp_freq_common.exit:              ; preds = %sw.epilog.i, %sw.bb1.i.rpr0521_write_samp_freq_common.exit_crit_edge, %sw.bb3.rpr0521_write_samp_freq_common.exit_crit_edge
  %retval.0.i28 = phi i32 [ %call.i.i27, %sw.epilog.i ], [ -22, %sw.bb1.i.rpr0521_write_samp_freq_common.exit_crit_edge ], [ -22, %sw.bb3.rpr0521_write_samp_freq_common.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock4) #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %lock8 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock8, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #8
  %24 = trunc i32 %val to i16
  %conv.i29 = and i16 %24, 1023
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i29) #8
  %26 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %buffer.i, align 2
  %regmap.i30 = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %regmap.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i30, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %28, i32 noundef 83, ptr noundef nonnull %buffer.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb7.rpr0521_write_ps_offset.exit_crit_edge

sw.bb7.rpr0521_write_ps_offset.exit_crit_edge:    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_write_ps_offset.exit

do.end.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33) #11
  br label %rpr0521_write_ps_offset.exit

rpr0521_write_ps_offset.exit:                     ; preds = %do.end.i, %sw.bb7.rpr0521_write_ps_offset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #8
  call void @mutex_unlock(ptr noundef %lock8) #8
  br label %cleanup

cleanup:                                          ; preds = %rpr0521_write_ps_offset.exit, %rpr0521_write_samp_freq_common.exit, %rpr0521_set_gain.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %rpr0521_write_ps_offset.exit ], [ %retval.0.i28, %rpr0521_write_samp_freq_common.exit ], [ %retval.0.i, %rpr0521_set_gain.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpr0521_set_power_state(ptr nocapture noundef %data, i1 noundef zeroext %on, i8 noundef zeroext %device_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %conv = zext i8 %device_mask to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %als_ps_need_en = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %als_ps_need_en to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %als_ps_need_en, align 8
  %lnot = xor i1 %on, true
  %als_need_dis = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 8
  %frombool4 = zext i1 %lnot to i8
  %1 = ptrtoint ptr %als_need_dis to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool4, ptr %als_need_dis, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pxs_ps_need_en = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %pxs_ps_need_en to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %pxs_ps_need_en, align 1
  %lnot12 = xor i1 %on, true
  %pxs_need_dis = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 9
  %frombool13 = zext i1 %lnot12 to i8
  %3 = ptrtoint ptr %pxs_need_dis to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool13, ptr %pxs_need_dis, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  br i1 %on, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then31

if.then.i:                                        ; preds = %if.then16
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !167
  br label %do.end

if.end22:                                         ; preds = %if.end14
  %call.i77 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i77, ptr %last_busy.i, align 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %call.i78 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev20, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp = icmp slt i32 %call.i78, 0
  br i1 %cmp, label %if.end22.do.end_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.do.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end22.do.end_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %ret.088 = phi i32 [ %call.i78, %if.end22.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %conv28 = zext i1 %on to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.29, i32 noundef %conv28, i32 noundef %ret.088) #11
  br label %cleanup

if.then31:                                        ; preds = %if.then16
  %als_ps_need_en32 = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %als_ps_need_en32 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %als_ps_need_en32, align 8, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool33.not = icmp eq i8 %13, 0
  br i1 %tobool33.not, label %if.then31.if.end40_crit_edge, label %if.then34

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then34:                                        ; preds = %if.then31
  %regmap.i = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 10
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 65, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i79 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i79, label %if.then34.cleanup_crit_edge, label %if.end38

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %als_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %als_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %als_dev_en.i, align 8
  %17 = ptrtoint ptr %als_ps_need_en32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %als_ps_need_en32, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.then31.if.end40_crit_edge
  %pxs_ps_need_en41 = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %pxs_ps_need_en41 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pxs_ps_need_en41, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool42.not = icmp eq i8 %19, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.then43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  %regmap.i81 = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 10
  %20 = ptrtoint ptr %regmap.i81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i81, align 4
  %call.i.i82 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 65, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %cmp.i83 = icmp slt i32 %call.i.i82, 0
  br i1 %cmp.i83, label %if.then43.cleanup_crit_edge, label %if.end47

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %pxs_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %pxs_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %pxs_dev_en.i, align 1
  %23 = ptrtoint ptr %pxs_ps_need_en41 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %pxs_ps_need_en41, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then43.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %do.end, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.088, %do.end ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %if.end47 ], [ 0, %if.end22.cleanup_crit_edge ], [ %call.i.i, %if.then34.cleanup_crit_edge ], [ %call.i.i82, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_pxs_drdy_set_state(ptr nocapture noundef readonly %trigger, i1 noundef zeroext %enable_drdy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trigger, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  br i1 %enable_drdy, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 67, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end.thread14_crit_edge

if.then.if.end.thread14_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread14

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 74, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6_crit_edge, label %if.end.i.if.end.thread14_crit_edge

if.end.i.if.end.thread14_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread14

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.thread14:                                  ; preds = %if.end.i.if.end.thread14_crit_edge, %if.then.if.end.thread14_crit_edge
  %.str.48.sink.i = phi ptr [ @.str.45, %if.then.if.end.thread14_crit_edge ], [ @.str.48, %if.end.i.if.end.thread14_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull %.str.48.sink.i) #11
  br label %do.end

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 74, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.thread14
  %err.017 = phi i32 [ -16, %if.end.thread14 ], [ %call.i, %if.end.do.end_crit_edge ]
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  %err.013 = phi i32 [ %err.017, %do.end ], [ 0, %if.end.if.end6_crit_edge ], [ 0, %if.end.i.if.end6_crit_edge ]
  ret i32 %err.013
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_trigger_using_own(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @rpr0521_set_power_state(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext -64)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %als_ps_need_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %als_ps_need_en.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %als_ps_need_en.i, align 8
  %als_need_dis.i = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %als_need_dis.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %als_need_dis.i, align 2
  %pxs_ps_need_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %pxs_ps_need_en.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pxs_ps_need_en.i, align 1
  %pxs_need_dis.i = getelementptr inbounds %struct.rpr0521_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %pxs_need_dis.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %pxs_need_dis.i, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i77.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i77.i, ptr %last_busy.i.i, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call.i78.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev20.i, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %cmp.i = icmp slt i32 %call.i78.i, 0
  br i1 %cmp.i, label %do.end, label %rpr0521_set_power_state.exit.thread

rpr0521_set_power_state.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %dev26.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef %call.i78.i) #11
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %rpr0521_set_power_state.exit.thread
  %retval.0.i9 = phi i32 [ 0, %rpr0521_set_power_state.exit.thread ], [ %call.i78.i, %do.end ]
  ret i32 %retval.0.i9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %als_need_dis = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %als_need_dis to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %als_need_dis, align 2, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %als_dev_en = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %als_dev_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %als_dev_en, align 8, !range !164
  %als_ps_need_en = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %als_ps_need_en to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %als_ps_need_en, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pxs_need_dis = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %pxs_need_dis to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pxs_need_dis, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pxs_dev_en = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %pxs_dev_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pxs_dev_en, align 1, !range !164
  %pxs_ps_need_en = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %pxs_ps_need_en to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %pxs_ps_need_en, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tmp.i, align 4, !annotation !163
  %regmap.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 65, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end7.rpr0521_poweroff.exit_crit_edge, label %if.end.i

if.end7.rpr0521_poweroff.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_poweroff.exit

if.end.i:                                         ; preds = %if.end7
  %als_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %als_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %als_dev_en.i, align 8
  %pxs_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %pxs_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %pxs_dev_en.i, align 1
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 74, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.rpr0521_poweroff.exit_crit_edge, label %do.end.i

if.end.i.rpr0521_poweroff.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpr0521_poweroff.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.56) #11
  br label %rpr0521_poweroff.exit

rpr0521_poweroff.exit:                            ; preds = %do.end.i, %if.end.i.rpr0521_poweroff.exit_crit_edge, %if.end7.rpr0521_poweroff.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %do.end.i ], [ %call.i.i, %if.end7.rpr0521_poweroff.exit_crit_edge ], [ 0, %if.end.i.rpr0521_poweroff.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  call void @regcache_mark_dirty(ptr noundef %24) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpr0521_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #8
  %als_ps_need_en = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %als_ps_need_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %als_ps_need_en, align 8, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 65, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %als_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %als_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %als_dev_en.i, align 8
  %11 = ptrtoint ptr %als_ps_need_en to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %als_ps_need_en, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %pxs_ps_need_en = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %pxs_ps_need_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pxs_ps_need_en, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 65, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %cmp.i28 = icmp slt i32 %call.i.i27, 0
  br i1 %cmp.i28, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %pxs_dev_en.i = getelementptr inbounds %struct.rpr0521_data, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %pxs_dev_en.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %pxs_dev_en.i, align 1
  %17 = ptrtoint ptr %pxs_ps_need_en to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %pxs_ps_need_en, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end6.if.end14_crit_edge
  tail call void @msleep(i32 noundef 100) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call.i.i, %if.then.cleanup_crit_edge ], [ %call.i.i27, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !130, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__initcall__kmod_rpr0521__289_1135_rpr0521_driver_init6, !1, !"__initcall__kmod_rpr0521__289_1135_rpr0521_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/rpr0521.c", i32 1135, i32 1}
!2 = !{ptr @__exitcall_rpr0521_driver_exit, !1, !"__exitcall_rpr0521_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/rpr0521.c", i32 1137, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/rpr0521.c", i32 1138, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/rpr0521.c", i32 1139, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/rpr0521.c", i32 1126, i32 11}
!12 = !{ptr @rpr0521_driver, !13, !"rpr0521_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/rpr0521.c", i32 1124, i32 26}
!14 = !{ptr @rpr0521_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/rpr0521.c", i32 942, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/rpr0521.c", i32 944, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rpr0521_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rpr0521_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @rpr0521_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/rpr0521.c", i32 953, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/rpr0521.c", i32 963, i32 3}
!30 = !{ptr @rpr0521_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rpr0521_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/rpr0521.c", i32 985, i32 4}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/rpr0521.c", i32 998, i32 4}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/rpr0521.c", i32 1000, i32 4}
!38 = !{ptr @rpr0521_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rpr0521_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/rpr0521.c", i32 1008, i32 4}
!42 = !{ptr @rpr0521_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rpr0521_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/rpr0521.c", i32 1024, i32 4}
!46 = !{ptr @rpr0521_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rpr0521_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/rpr0521.c", i32 920, i32 11}
!50 = !{ptr @rpr0521_regmap_config, !51, !"rpr0521_regmap_config", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/rpr0521.c", i32 919, i32 35}
!52 = !{ptr @rpr0521_info, !53, !"rpr0521_info", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/rpr0521.c", i32 832, i32 30}
!54 = !{ptr @rpr0521_attribute_group, !55, !"rpr0521_attribute_group", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/rpr0521.c", i32 226, i32 37}
!56 = !{ptr @rpr0521_attributes, !57, !"rpr0521_attributes", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/rpr0521.c", i32 219, i32 26}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/rpr0521.c", i32 210, i32 8}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @iio_const_attr_in_intensity_scale_available, !59, !"iio_const_attr_in_intensity_scale_available", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/rpr0521.c", i32 211, i32 8}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @iio_const_attr_in_proximity_scale_available, !63, !"iio_const_attr_in_proximity_scale_available", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/rpr0521.c", i32 217, i32 8}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @iio_const_attr_sampling_frequency_available, !67, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!70 = !{ptr @rpr0521_data_reg, !71, !"rpr0521_data_reg", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/rpr0521.c", i32 108, i32 38}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/light/rpr0521.c", i32 369, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rpr0521_set_power_state._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @rpr0521_set_power_state._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @rpr0521_gain, !78, !"rpr0521_gain", i1 false, i1 false}
!78 = !{!"../drivers/iio/light/rpr0521.c", i32 129, i32 3}
!79 = !{ptr @rpr0521_pxs_gain, !80, !"rpr0521_pxs_gain", i1 false, i1 false}
!80 = !{!"../drivers/iio/light/rpr0521.c", i32 91, i32 34}
!81 = !{ptr @rpr0521_als_gain, !82, !"rpr0521_als_gain", i1 false, i1 false}
!82 = !{!"../drivers/iio/light/rpr0521.c", i32 84, i32 34}
!83 = !{ptr @rpr0521_samp_freq_i, !84, !"rpr0521_samp_freq_i", i1 false, i1 false}
!84 = !{!"../drivers/iio/light/rpr0521.c", i32 160, i32 39}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/light/rpr0521.c", i32 694, i32 3}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rpr0521_read_ps_offset._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @rpr0521_read_ps_offset._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/light/rpr0521.c", i32 712, i32 3}
!92 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @rpr0521_write_ps_offset._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @rpr0521_write_ps_offset._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @rpr0521_channels, !96, !"rpr0521_channels", i1 false, i1 false}
!96 = !{!"../drivers/iio/light/rpr0521.c", i32 243, i32 35}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/light/rpr0521.c", i32 845, i32 3}
!99 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rpr0521_init._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @rpr0521_init._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/light/rpr0521.c", i32 850, i32 3}
!104 = !{ptr @rpr0521_init._entry.37, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rpr0521_init._entry_ptr.39, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/light/rpr0521.c", i32 860, i32 3}
!108 = !{ptr @rpr0521_init._entry.40, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rpr0521_init._entry_ptr.42, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @rpr0521_trigger_ops, !111, !"rpr0521_trigger_ops", i1 false, i1 false}
!111 = !{!"../drivers/iio/light/rpr0521.c", i32 542, i32 37}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/light/rpr0521.c", i32 537, i32 3}
!114 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @rpr0521_pxs_drdy_set_state._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @rpr0521_pxs_drdy_set_state._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/light/rpr0521.c", i32 494, i32 3}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @rpr0521_write_int_enable._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @rpr0521_write_int_enable._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/light/rpr0521.c", i32 505, i32 3}
!124 = !{ptr @rpr0521_write_int_enable._entry.47, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @rpr0521_write_int_enable._entry_ptr.49, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @rpr0521_available_scan_masks, !127, !"rpr0521_available_scan_masks", i1 false, i1 false}
!127 = !{!"../drivers/iio/light/rpr0521.c", i32 237, i32 28}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/light/rpr0521.c", i32 476, i32 3}
!130 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rpr0521_trigger_consumer_handler._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @rpr0521_trigger_consumer_handler._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @rpr0521_buffer_setup_ops, !134, !"rpr0521_buffer_setup_ops", i1 false, i1 false}
!134 = !{!"../drivers/iio/light/rpr0521.c", i32 577, i32 42}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/light/rpr0521.c", i32 557, i32 3}
!137 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rpr0521_buffer_preenable._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @rpr0521_buffer_preenable._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/light/rpr0521.c", i32 572, i32 3}
!142 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @rpr0521_buffer_postdisable._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @rpr0521_buffer_postdisable._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/light/rpr0521.c", i32 900, i32 3}
!147 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @rpr0521_poweroff._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @rpr0521_poweroff._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @rpr0521_pm_ops, !151, !"rpr0521_pm_ops", i1 false, i1 false}
!151 = !{!"../drivers/iio/light/rpr0521.c", i32 1106, i32 32}
!152 = !{ptr @rpr0521_id, !153, !"rpr0521_id", i1 false, i1 false}
!153 = !{!"../drivers/iio/light/rpr0521.c", i32 1117, i32 35}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{!"auto-init"}
!164 = !{i8 0, i8 2}
!165 = !{i64 2148365318}
!166 = !{i64 850938, i64 850963, i64 850985, i64 851001, i64 851013, i64 851033, i64 851057, i64 851073, i64 851085}
!167 = !{i64 2148365506}
